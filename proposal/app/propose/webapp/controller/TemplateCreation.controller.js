sap.ui.define(
  ["sap/ui/core/mvc/Controller", 
  "sap/ui/richtexteditor/RichTextEditor",
  "sap/m/MessageToast"
],
  /**
   * @param {typeof sap.ui.core.mvc.Controller} Controller
   */
  function (Controller) {
    "use strict";

    return Controller.extend("ns.propose.controller.TemplateCreation", {
      onInit: function () {},
      onAddRowTextArea: function () {
        console.log("hey");
        var that = this;
        var row = new sap.m.ColumnListItem({
          cells: [
            new sap.ui.richtexteditor.RichTextEditor({
              growing: true,
              width: "100%",
              editorType: sap.ui.richtexteditor.EditorType.TinyMCE4,
              customToolbar: true,
              showGroupFont: true,
              showGroupLink: true,
              showGroupInsert: true,
              showGroupClipboard: true,
              showGroupUndo: true,
              showGroupStructure: true,
              showGroupTextAlign: true,
              showGroupTextIndent: true,
              showGroupFontStyle: true,
              showGroupFontSize: true,
              showGroupColor: true,
              showGroupHighlight: true,
              toolbar: "custom-toolbar",
              liveChange: function (oEvent) {
                that._updateDocumentContent(oEvent.getSource().getValue());
              },
            }).addStyleClass("myRichTextEditor"),
          ],
        });
        this.getView().byId("idFrame").addItem(row);
      },

      _updateDocumentContent: function (content) {
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

      onPrintButtonClick: function () {
        var content = this.mergeContent();
        if (content.trim() !== "") {
          var formattedContent = "<html><body>" + content + "</body></html>";
          var blob = new Blob([formattedContent], {
            type: "application/msword",
          });
          var link = document.createElement("a");
          link.href = window.URL.createObjectURL(blob);
          link.download = "document.doc";
          link.click();
        } else {
          console.log("No content to download.");
        }
      },
      onAddRowImage: function () {
        var uniqueId = "dynamicId_" + new Date().getTime();
        var fileUploaderId = "fileUploader_" + uniqueId;
        var buttonId = "_IDGenButton2_" + uniqueId;
        console.log(fileUploaderId);
        var row = new sap.m.ColumnListItem({
          cells: [
            new sap.ui.layout.VerticalLayout({
              class: "desc",
              content: [
                new sap.ui.unified.FileUploader({
                  id: fileUploaderId,
                  name: "myFileUpload",
                  uploadUrl: "upload/",
                  tooltip: "Upload your file to the local server",
                  uploadComplete: this.handleUploadComplete.bind(this),
                }),
                new sap.m.Button({
                  id: buttonId,
                  text: "Upload File",
                  press: this.handleUploadPress.bind(this),
                }),
              ],
            }),
          ],
        });
        this.getView().byId("idFrame").addItem(row);
      },
      handleUploadComplete: function () {
        console.log("hhhhhhhhhh");
      },

      handleUploadPress: function () {
        var oFileUploader = this.byId("fileUploader");
        oFileUploader
          .checkFileReadable()
          .then(
            function () {
              oFileUploader.upload();
              MessageToast.show(
                "success"
              );
            },
            function (error) {
              MessageToast.show(
                "The file cannot be read. It may have changed."
              );
            }
          )
          .then(function () {
            oFileUploader.clear();
          });
      }
    });
  }
);
