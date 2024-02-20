sap.ui.define(
  ["sap/ui/core/mvc/Controller", "sap/m/Input", "sap/m/MessageToast", "sap/ui/richtexteditor/RichTextEditor"],
  function (Controller, Input, MessageToast, RichTextEditor) {
    "use strict";

    return Controller.extend("ns.propose.controller.ProposalForm", {
      _documentContent: "",
      _buttonCounter: 1,
      _richTextEditorCounter: 1,
      _titleInputCounter: 1,
      _mainSectionCounter: 1,
      _titleInput: null,
      _mainSections: [], // Array to store Main Section data
      textitem: 1,
      _subsection: 1,
      _subSections : [],
      _titleSubInputCounter1: 2,

      onInit: function () {
        this._documentContent = "";
        this._buttonCounter = 1;
        this._richTextEditorCounter = 1;
        this._titleInputCounter = 1;
        this._mainSectionCounter = 1;
        this._mainSections = [1];
        this.textitem = 1;
        this._subsection1 = 1;
        this._subsection = [1];

        this._titleSubInputCounter1=2;



        this._setInitialSectionTitle();




      },
_setInitialSectionTitle: function () {
        var that = this;
        // Generate a unique ID for the new Input field
        var wizard = this.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var allSteps = wizard.getSteps();
        var currentStepIndex = allSteps.indexOf(currentStep); // Adding 1 since steps are usually 1-indexed
        var inputId = 'Section-' + this._titleInputCounter++;
        this._titleSubInputCounter = 0;
        this._titleSubInputCounter++;

              if (currentStepIndex === -1) {
          currentStepIndex++;
        }

        // Store the generated ID in the controller property
        this._titleInput = inputId;

        console.log("Current Step Index: " + currentStepIndex);
        console.log("Generated Input ID: " + inputId);

        var container = new sap.m.VBox();

        // Create a Label for bold text
        var boldLabel = new sap.m.Label({
          text: inputId,
          design: 'Bold',
        });

        // Create a new Input field with the generated ID
        var inputField = new sap.m.Input({
          id: inputId,
          placeholder: 'Enter your title...',
          width: '80%',
        });

        // Add the Label and Input field to the VBox
        container.addItem(boldLabel);
        container.addItem(inputField);

        // Create a new ColumnListItem with the VBox
        var row = new sap.m.ColumnListItem({
          cells: [container],
        });

        // Get the table and add the new row
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);

        console.log(idFrame);

        if (idFrame) {
          idFrame.addItem(row);

          // Make the Input field visible
          inputField.setVisible(true);

          // Add the input ID to the array for later reference
          this._mainSections.push(inputId);

          console.log("Section added successfully.");
        } else {
          console.error("idFrame not found for step " + currentStepIndex);
        }
      },





      onAddRowTextArea: function () {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var textItemId = "Text-" + this.textitem++;

        console.log(textItemId);

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);
        if (idFrame) {
          var row = new sap.m.ColumnListItem({
            cells: [
              new sap.ui.richtexteditor.RichTextEditor({
                id: textItemId,
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
                showGroupFontStyle: true,
              }).addStyleClass("myRichTextEditor"),
            ],
          });

          idFrame.addItem(row);
        } else {
          console.error("idFrame not found for step " + currentStepIndex);
        }
      },

onSubSection: function () {

  
        var that = this;

        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);

        if(currentStepIndex ===0){

        console.log("current Step  :" + currentStepIndex);

        // Generate a unique ID for the new Input field
        var inputId = 'SubSection_' + this._titleSubInputCounter + "." + this._subsection++;

        // Store the generated ID in the controller property
        this._titleInput = inputId;



        console.log(inputId);

        var container = new sap.m.VBox();

        // Create a Label for bold text
        var boldLabel = new sap.m.Label({
          text: inputId,
          design: 'Bold',
        });

        // Create a new Input field with the generated ID
        var inputField = new sap.m.Input({
          id: inputId,
          placeholder: 'Enter your title...',
          width: '80%',
        });

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);
        if (idFrame) {
          // Add the Label and Input field to the VBox
          container.addItem(boldLabel);
          container.addItem(inputField);

          // Create a new ColumnListItem with the VBox
          var row = new sap.m.ColumnListItem({
            cells: [container],
          });

          // Get the table and add the new row
          idFrame.addItem(row);

          // Make the Input field visible
          inputField.setVisible(true);

          // Add the input ID to the array for later reference
          this._mainSections.push(inputId);
        } else {
          console.error("idFrame not found for SubSection");
        }
      }

        console.log("moving to next sight");

        console.log(currentStepIndex);
        // Check if the current step is the one you're interested in
        if  (currentStepIndex === 1) {

          // console.log(currentStep.getId());
          // Call your function for initializing section title
          // this._setInitialSectionTitle();

          console.log("going to change ");

         

         

          var that = this;

        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);

        console.log("current Step  :" + currentStepIndex);

        // Generate a unique ID for the new Input field
        var inputId = 'SubSection_' + this._titleSubInputCounter1 + "." + this._subsection1++;

        // Store the generated ID in the controller property
        this._titleInput = inputId;



        console.log(inputId);

        var container = new sap.m.VBox();

        // Create a Label for bold text
        var boldLabel = new sap.m.Label({
          text: inputId,
          design: 'Bold',
        });

        // Create a new Input field with the generated ID
        var inputField = new sap.m.Input({
          id: inputId,
          placeholder: 'Enter your title...',
          width: '80%',
        });

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);
        if (idFrame) {
          // Add the Label and Input field to the VBox
          container.addItem(boldLabel);
          container.addItem(inputField);

          // Create a new ColumnListItem with the VBox
          var row = new sap.m.ColumnListItem({
            cells: [container],
          });

          // Get the table and add the new row
          idFrame.addItem(row);

          // Make the Input field visible
          inputField.setVisible(true);

          // Add the input ID to the array for later reference
          this._mainSections.push(inputId);
        } else {
          console.error("idFrame not found for SubSection");
        }


        }

          

      },







      onSave: function () {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var allSteps = wizard.getSteps();
        var currentStepIndex = allSteps.indexOf(currentStep);

        console.log("Save Button Clicked ");
        console.log("Current Step Index: " + currentStepIndex);

        // Check if the current step is the one you're interested in (e.g., step 1 or step 2)
        if (currentStepIndex === 0 || currentStepIndex === 1) {
          // Save logic for both Main Section and Sub Section
          this.saveMainSection();
          this.saveSubSection();

          // Display a message or perform any additional actions after saving
          MessageToast.show("Data saved successfully!");
        }
      },

      saveMainSection: function () {
        // Implement logic to save Main Section data
        // Iterate through _mainSections array and save the data as needed
        this._mainSections.forEach(function (mainSectionId) {
          var mainSectionInput = sap.ui.getCore().byId(mainSectionId);

          console.log(mainSectionInput);

          if (mainSectionInput) {
            var mainSectionData = {
              // Extract data from the main section input control
              id: "MAIN_0" + this._mainSectionCounter++, // Adjust as needed
              mainSectionTitle: mainSectionInput.getValue(),
              // ... other main section properties ...
            };

            oModel.create("/MainSection",oEntrydetails,{
              method: "POST",
              success: function () {
                  MessageToast.show(" Subsection Added Successfully");
              }
              });

            console.log("Saving Main Section:", mainSectionData);
          }
        });
      },

      saveSubSection: function () {
        // Implement logic to save Sub Section data
        // Iterate through _subSections array and save the data as needed
        this._subSections.forEach(function (subSectionId) {
          var subSectionInput = sap.ui.getCore().byId(subSectionId);
          if (subSectionInput) {
            var mainSectionId = that.getMainSectionIdForSubSection(subSectionId);

            var subSectionData = {
              // Extract data from the sub section input control
              id: "SUB_0" + that._subSectionCounter++, // Adjust as needed
              subSectionTitle: subSectionInput.getValue(),
              parentSection: mainSectionId,
              // ... other sub section properties ...
            };

         

            console.log("Saving Sub Section:", subSectionData);
          }
        });
      },


addSectionLabel: function (stepTitle, wizard) {
        // Extract the step number from the title
        var stepNumber = parseInt(stepTitle.replace("Step ", ""));

        // Generate a unique ID for the new Input field
        var inputId = 'Section_' + (stepNumber < 10 ? '0' : '') + stepNumber;

        console.log(inputId);

        var container = new sap.m.VBox();

        // Create a Label for bold text
        var boldLabel = new sap.m.Label({
          text: "Section: " + inputId,
          design: 'Bold',
        });

        // Create a new Input field with the generated ID
        var inputField = new sap.m.Input({
          id: inputId,
          placeholder: 'Enter your title...',
          width: '80%',
        });

        // Add the Label and Input field to the VBox
        container.addItem(boldLabel);
        container.addItem(inputField);

        // Create a new ColumnListItem with the VBox
        var row = new sap.m.ColumnListItem({
          cells: [container],
        });

        // Get the table and add the new row
        var tableId = 'idFrame' + stepNumber;
        var idFrame = wizard.byId(tableId);

        if (idFrame) {
          idFrame.addItem(row);

          // Make the Input field visible
          inputField.setVisible(true);

          // Add the input ID to the array for later reference
          this._mainSections.push(inputId);
        }
      },


      onStepChanged: function (oEvent) {
        var wizard = oEvent.getSource();
        var currentStep = wizard.getProgressStep();
    
        // Check if the current step is greater than 10
        if (currentStep >= 11) {
            console.error("Error: Current step exceeds the limit of 10");
            // You can handle the error in some way, for example, show a message to the user
            // You might want to prevent further navigation or take appropriate actions.
        } else {
            // Call your function for initializing section title
            this._setInitialSectionTitle();
        }
    },

      onContinue: function (oEvent) {

        var wizard = oEvent.getSource();

        console.log(wizard);

        var currentStep = wizard.getProgressStep();

        console.log(currentStep);



        // Check if the current step is the one you're interested in
        if (currentStep && currentStep.getTitle() === "Step 2") {

          console.log(currentStep.getId());
          // Call your function for initializing section title
          this._setInitialSectionTitle();

        }
      },








    });
  }
);
