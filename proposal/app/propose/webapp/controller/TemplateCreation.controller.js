sap.ui.define([
  "sap/ui/core/mvc/Controller",
  "sap/m/VBox",
  "sap/m/RadioButton",
  "sap/ui/richtexteditor/RichTextEditor",
  "sap/m/Button",
  "sap/m/Dialog",
  "sap/m/Label",
  "sap/m/Input",
  "sap/m/ButtonType",
  "sap/ui/layout/HorizontalLayout"
], function (Controller, VBox, RadioButton, RichTextEditor, Button, Dialog, Label, Input, ButtonType, HorizontalLayout) {
  "use strict";

  return Controller.extend("ns.propose.controller.TemplateCreation", {
    currentSection: null, // Store reference to the currently selected VBox

    onPressSection: function () {
      var that = this;

      var oDialog = new Dialog({
        title: "Enter Section Title",
        type: "Message",
        content: [
          new Label({ text: "Section Title:" }),
          new Input("sectionTitleInput", {
            width: "100%"
          })
        ],
        beginButton: new Button({
          type: ButtonType.Emphasized,
          text: "OK",
          press: function () {
            that._handleSectionTitleEntered(oDialog);
          }
        }),
        endButton: new Button({
          text: "Cancel",
          press: function () {
            oDialog.close();
          }
        }),
        afterClose: function () {
          oDialog.destroy();
        }
      });

      oDialog.open();
    },

    _handleSectionTitleEntered: function (oDialog) {
      // Get the entered section title
      var sectionTitle = sap.ui.getCore().byId("sectionTitleInput").getValue();

      // Close the dialog
      oDialog.close();

      // Proceed with adding the section using the entered title
      this.addSection(sectionTitle);
    },

    // Function to add a section with a title
    addSection: function (sectionTitle) {
      // Create VBox to hold radio button and options
      var vbox = new VBox();

      // Create radio button with the given section title
      var radioButton = new RadioButton({
        text: sectionTitle
      });

      // Add click event to the radio button
      radioButton.attachSelect(function () {
        if (this.currentSection) {
          // Hide the "Add RichTextEditor" button for the previous section
          var previousAddButton = this.currentSection.getItems().find(function (item) {
            return item instanceof Button && item.getText() === "Add RichTextEditor";
          });
          if (previousAddButton) {
            previousAddButton.setVisible(false);
          }
        }

        // Show "Add RichTextEditor" button for the selected section
        var addButton = vbox.getItems().find(function (item) {
          return item instanceof Button && item.getText() === "Add RichTextEditor";
        });
        addButton.setVisible(true);

        // Update the reference to the currently selected VBox
        this.currentSection = vbox;
      }.bind(this));

      // Add radio button to VBox
      vbox.addItem(radioButton);

      // Create Edit Button to edit the section title
      var editButton = new Button({
        icon: "sap-icon://edit",
        press: function () {
          this._editSectionTitle(vbox, radioButton);
        }.bind(this)
      });

      // Add Edit Button to VBox
      vbox.addItem(editButton);

      // Create Button to add RichTextEditor dynamically
      var addButton = new Button({
        text: "Add RichTextEditor",
        visible: false, // Initially hide the button
        press: this.onAddRichTextEditor.bind(this, vbox) // Bind the VBox to the function call
      });

      // Add Add Button to VBox
      vbox.addItem(addButton);

      // Add VBox to the container
      this.getView().byId("container").addItem(vbox);
    },

    // Function to edit the section title
    _editSectionTitle: function (vbox, radioButton) {
      var sectionTitle = radioButton.getText();

      var oDialog = new Dialog({
        title: "Edit Section Title",
        type: "Message",
        content: [
          new Label({ text: "Section Title:" }),
          new Input("editSectionTitleInput", {
            value: sectionTitle,
            width: "100%"
          })
        ],
        beginButton: new Button({
          type: ButtonType.Emphasized,
          text: "OK",
          press: function () {
            var newSectionTitle = sap.ui.getCore().byId("editSectionTitleInput").getValue();
            radioButton.setText(newSectionTitle);
            oDialog.close();
          }
        }),
        endButton: new Button({
          text: "Cancel",
          press: function () {
            oDialog.close();
          }
        }),
        afterClose: function () {
          oDialog.destroy();
        }
      });

      oDialog.open();
    },

    // Function to add RichTextEditor dynamically
    onAddRichTextEditor: function (vbox) {
      // Create RichTextEditor for the selected section
      var richTextEditor = new RichTextEditor({
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
        toolbar: "custom-toolbar"
      });

      // Create Button to minimize RichTextEditor
      var minimizeButton = new Button({
        icon: "sap-icon://decline",
        press: function () {
          hbox.destroy(); // Remove the HorizontalLayout containing the RichTextEditor and the button
        }
      });

      // Create HorizontalLayout to contain RichTextEditor and minimize button
      var hbox = new HorizontalLayout({
        content: [richTextEditor]
      });

      // Add HorizontalLayout to VBox
      vbox.addItem(hbox);

      // Add minimize button to the end of HorizontalLayout
      hbox.addContent(minimizeButton);
    }
  });
});
