sap.ui.define(
  [
    "sap/ui/core/mvc/Controller",
    "sap/ui/richtexteditor/library",
    "sap/m/MessageToast",
    "sap/ui/model/json/JSONModel",
  ],
  function (Controller, library, MessageToast, JSONModel) {
    "use strict";

    return Controller.extend("my.project1.controller.TemplateCreate", {
      onInit: function () {
        var oViewModel = new JSONModel({
          isPreviewButtonEnabled: false,
        });

        this.getView().setModel(oViewModel, "viewModel");
      },

      onAddRowTextArea: function (bIsTinyMCE5) {
        console.log("hey");
        var that = this;
        var i = 0;
        var oRichTextEditor = new sap.ui.richtexteditor.RichTextEditor({
          growing: true,
          width: "100%",
          height: "300px",
          editorType: sap.ui.richtexteditor.EditorType.bIsTinyMCE,
          selector: "#myEditor",
          customToolbar: false,
          showGroupFont: true, // hide font-related groups
          showGroupLink: true, // hide link-related groups
          showGroupInsert: true, // hide insert-related groups
          showGroupClipboard: false, // hide clipboard-related groups
          showGroupUndo: true, // hide undo-related groups
          showGroupStructure: false, // hide structure-related groups
          showGroupTextAlign: true, // hide text-align-related groups
          showGroupTextIndent: false, // hide text-indent-related groups
          showGroupFontStyle: false, // hide font-style-related groups
          showGroupFontSize: false, // hide font-size-related groups
          showGroupColor: false, // hide color-related groups
          showGroupHighlight: false, // hide highlight-related groups
          toolbar: "custom-toolbar",
          tinymceSettings: {
            plugins: 'image',
            toolbar: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
            images_upload_url: '/uploadImage',  // URL for image upload endpoint on the server
            automatic_uploads: true,
          },
          // setup: function (editor) {
          //   editor.ui.registry.addButton("custom-toolbar", {
          //     text: "Custom Toolbar",
          //     icon: "image",
          //   });
          // },
          liveChange: function (oEvent) {
            that.updateDocumentContent(oEvent.getSource().getValue());
          },
          ready: function () {
            bIsTinyMCE5
              ? this.addButtonGroup("table") // show only the table group
              : this.addButtonGroup("table");
          },
        }).addStyleClass("myRichTextEditor");
 
        var row = new sap.m.ColumnListItem({
          cells: [oRichTextEditor],
        });

        this.getView().byId("idFrame").addItem(row);
        console.log(this.getView().byId("idFrame").addItem(row));
      },

      updateDocumentContent: function (content) {
        this._documentContent = content;
      },

      mergeContent: function () {
        var content = "";
        var richTextEditors = this.getView().byId("idFrame").getItems();
        richTextEditors.forEach(function (item) {
          var editor = item.getCells()[0];
          if (editor) {
            // Ensure editor exists before accessing its value
            content += editor.getValue() + "<br><br>";
          }
        });
        return content;
      },

      saveClick: function () {
        var content = this.mergeContent();
        if (content.trim() !== "") {
          var formattedContent =  content ;
          var blob = new Blob([formattedContent], {});

          // Convert content to base64
          var reader = new FileReader();
          reader.onloadend = function () {
            var base64Content = reader.result.split(",")[1];

            // Save to the database
            this.saveToDatabase(base64Content);
          }.bind(this);

          reader.readAsDataURL(blob);
        } else {
          console.log("No content to download or save to the database.");
        }
      },

      saveToDatabase: function (base64Content) {
        var oDataModel = this.getView().getModel();
        var oViewModel = this.getView().getModel("viewModel");

        var payload = {
          tableValue: base64Content,
        };

        console.log("Payload:", payload);
        var that = this;

        oDataModel.create("/TableDetail", payload, {
          success: function () {
            oViewModel.setProperty("/isPreviewButtonEnabled", true);
            console.log("Data added to the database successfully");
            that.getView().byId("IDGenButton3").setVisible(true);
            MessageToast.show("Table data added successfully");

            // Call a function to preview the data
            that.onPreviewPress(base64Content);

            that.clearForm();
          },
          error: function (error) {
            console.error("Error adding data to the database", error);
            MessageToast.show("some error is occured");
            this.clearForm();
          },
        });
      },
      clearForm: function () {
        // Implement your form clearing logic here
      },

      onPreviewPress: function (base64Content) {
        console.log("Base64 Content before decoding:", base64Content);
        var decodedData = atob(base64Content);

        console.log("Decoded Data:", decodedData);
        this.clearForm();
        //alert("Decoded Data:\n" + decodedData);
        const oRouter = this.getOwnerComponent().getRouter();
        oRouter.navTo("Preview", {
          base64Content: base64Content,
        });
      },
    });
  }
);
