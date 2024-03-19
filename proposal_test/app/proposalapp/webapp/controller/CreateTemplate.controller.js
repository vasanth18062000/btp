sap.ui.define([
    "sap/ui/core/mvc/Controller",
     "sap/m/Input",
      "sap/m/MessageToast",
      "sap/ui/richtexteditor/RichTextEditor"
    ], 
    function (Controller,MessageToast, RichTextEditor,Input) {

    "use strict";

        return Controller.extend("proposalapp.controller.NewTemplate", {
            _documentContent: "",
            _buttonCounter: 1,
            _richTextEditorCounter: 1,
            _titleInputCounter: 1,
            _mainSectionCounter: 1,
            _titleInput: null,
            _mainSections: [], // Array to store Main Section data
            textitem: 1,
            _subsection: 1,
      
            onInit: function () {
              this._documentContent = "";
              this._buttonCounter = 1;
              this._richTextEditorCounter = 1;
              this._titleInputCounter = 1;
              this._mainSectionCounter = 1;
              this._mainSections = [];
              this.textitem = 1;
              this._subsection = 1;
    
            this._wizard = this.byId("wizard");
            this._wizardStep1 = this.byId("wizard1");
            this._wizardStep2 = this.byId("wizard2");
      
            console.log(this._wizardStep1);
            console.log(this._wizardStep2);
      
      
            this.onShowTitlePress();
            
            
    
            },
      
            onShowTitlePress: function () {
              var that = this;
      
              // Generate a unique ID for the new Input field
              var inputId = 'Section_0' + this._titleInputCounter++;
      
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
      
              // Add the Label and Input field to the VBox
              container.addItem(boldLabel);
              container.addItem(inputField);
      
              // Create a new ColumnListItem with the VBox
              var row = new sap.m.ColumnListItem({
                cells: [container],
              });
      
              // Get the table and add the new row
              var idFrame = that.getView().byId('idFrame');
              idFrame.addItem(row);
      
              // Make the Input field visible
              inputField.setVisible(true);
      
              // Add the input ID to the array for later reference
              this._mainSections.push(inputId);
            },
    
    
            onAddRowTextArea: function () {
              var that = this; 
              var textItemId = "Text_0" + this.textitem++;
              console.log(textItemId); 
              var row = new sap.m.ColumnListItem({
                cells: [
                  new sap.ui.richtexteditor.RichTextEditor({
                    id: textItemId,
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
                      that._updateDocumentContent(
                        oEvent.getSource().getValue(),
                        textItemId
                      );
                    },
                  }).addStyleClass("myRichTextEditor"),
                ],
              });
      
              that.getView().byId("idFrame").addItem(row);
            },
      
            _updateDocumentContent: function (content, textItemId) {
              // Update the RichTextEditor content in the model
              this.getView().getModel().setProperty("/richTextContent", content);
      
            },
      
      
            onSubSection: function () {
      
              var that = this;
      
      
              // Generate a unique ID for the new Input field
              var inputId = 'SubSection_' + this._titleInputCounter + "." + this._subsection++;
      
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
      
              // Add the Label and Input field to the VBox
              container.addItem(boldLabel);
              container.addItem(inputField);
      
              // Create a new ColumnListItem with the VBox
              var row = new sap.m.ColumnListItem({
                cells: [container], 
              });
      
              // Get the table and add the new row
              var idFrame = that.getView().byId('idFrame');
              idFrame.addItem(row);
      
              // Make the Input field visible
              inputField.setVisible(true);
      
              // Add the input ID to the array for later reference
              this._mainSections.push(inputId);
      
            },
    
    
    
            onShowTitlePress: function () {
                var that = this;
                
                // Generate a unique ID for the new Input field
                var inputId = 'Section_0' + this._titleInputCounter++;
                
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
            
                // Add the Label and Input field to the VBox
                container.addItem(boldLabel);
                container.addItem(inputField);
            
                // Create a new ColumnListItem with the VBox
                var row = new sap.m.ColumnListItem({
                    cells: [container],
                });
            
                var idFrame;
                if (!this._frame2Created) {
                    // Get the first table and add the new row
                    idFrame = that.getView().byId('idFrame');
                    idFrame.addItem(row);
                    this._frame2Created = true; // Set flag to indicate the second table is created
                } else {
                    // Get the second table and add the new row
                    idFrame = that.getView().byId('idFrame1');
                    idFrame.addItem(row);
                }
                
                // Make the Input field visible
                inputField.setVisible(true);
                
                // Add the input ID to the array for later reference
                this._mainSections.push(inputId);
            },
            
    
      
      onSave: function (largeBinaryContent, inputId) {
              var that = this;
          
              var oModel = that.getView().getModel();
          
              // Define a function to handle the saving process
              function saveMainSection(index) {
                  if (index < that._mainSections.length) {
                      var currentInputId = that._mainSections[index];
                      var titleInputControl = sap.ui.getCore().byId(currentInputId);
          
                      if (titleInputControl) {
                          var oMainSection = {
                              id: "MAIN_0" + that._mainSectionCounter++,
                              mainSectiontitle: titleInputControl.getValue(),
                              
                          };
          
                          console.log(oMainSection);
          
                          oModel.create("/MainSection", oMainSection, {
                              
                            success: function (oData, response) {
                              console.log("MainSection entity created successfully:", oData);
                              MessageToast.show("Proposal saved successfully!");
    
                              saveMainSection(index + 1);
                          },
      
                          
                          
                          });
                      } else {
                          console.error("Title input control not found!");
      
                          MessageToast.show("Error on fetching")
                          // Continue with the next index
                          saveMainSection(index + 1);
      
                          
                      }
                  } else {
                      // Finished processing all sections
                  }
              }
          
              // Start the process with index 0
              saveMainSection(0);
          },
      
          onContinue: function () {
            var wizard = this.getView().byId("wizard");
            console.log(wizard);          // Replace "yourWizardId" with the actual ID of your Wizard control
            var currentStep = wizard.getProgressStep();
      
            console.log(currentStep);
        
            // Check if there is a next step
            if (currentStep < wizard.getSteps().length - 1) {
                // Determine the next step index
                var nextStepIndex = currentStep + 1;
        
                // Move to the next step
                wizard.goToStep(wizard.getSteps()[nextStepIndex]);
        
                // Optionally, you can perform additional logic or validation here
            } else {
                MessageToast.show("Error in fetching data")
            }
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
          var fromStep = oEvent.getParameter("from");
          var toStep = oEvent.getParameter("to");
      
          console.log(fromStep);
          comsole.log(toStep);
      
          // Check if the transition is from Step 1 to Step 2
          if (fromStep && toStep && fromStep.getId() === this._wizardStep1.getId() && toStep.getId() === this._wizardStep2.getId()) {
              // This is the transition from Step 1 to Step 2, execute your logic here
              this._setInitialSectionTitle();
          }
          },
          onNavBack() {
            const oRouter = this.getOwnerComponent().getRouter();
            oRouter.navTo("RouteProposal", {}, true);
          },  
          });
        }
      );
