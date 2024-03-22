sap.ui.define(
  ["sap/ui/core/mvc/Controller", "sap/m/Input", "sap/m/MessageToast",
    "sap/ui/richtexteditor/RichTextEditor", "sap/m/MessageBox",
    "sap/ui/richtexteditor/library", "sap/ui/model/json/JSONModel",],
  function (Controller, Input, MessageToast, RichTextEditor, MessageBox, JSONModel, library) {
    "use strict";

    return Controller.extend("ns.propose.controller.ProposalForm", {

      _sectionTitle: 1,
      _mainSectionId: 1,
      _SubSectionId: 1,
      _mainSections: [], // Array to store Main Section data
      _subsection: 1,
      _subSections: [],
      _imagecount: 1,
      _inputString: "",
      _subSectionCounter: 1,
      _sectionCounters: {},

      _table: 1,
      _tableitem: 1,
      textitem: 1,




      onInit: function () {

        this._tableitem = 1;


        this._sectionTitle = 1;
        this._mainSectionId = 1;
        this._mainSections = [1];
        this._subsection1 = 1;
        this._subsection = [1];
        this._SubSectionId = 1;
        this._imagecount = 1;

        this._subSectionCounter = 1;
        this._sectionCounters = {};



        this._setInitialSectionTitle();

        this._table = 1;
        this.textitem = 1;






      },
      _setInitialSectionTitle: function () {

        var that = this;
        // Generate a unique ID for the new Input field
        var wizard = this.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var allSteps = wizard.getSteps();
        var currentStepIndex = allSteps.indexOf(currentStep); // Adding 1 since steps are usually 1-indexed
        var inputId = 'Section-' + this._sectionTitle++;
        this._titleSubInputCounter = 0;
        this._titleSubInputCounter++;

        if (currentStepIndex === -1) {
          currentStepIndex++;
        }

        // Store the generated ID in the controller property
        this._SubSectionId = inputId;

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




      onAddRowTextArea: function (isMainSection) {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var textItemId = "Text-" + that.textitem++;

        console.log(textItemId);

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);
        if (idFrame) {
          var richTextEditor = new sap.ui.richtexteditor.RichTextEditor({
            id: textItemId,
            width: "100%",
            editorType: sap.ui.richtexteditor.EditorType.bIsTinyMCE5,
            showGroupFont: true,
            showGroupLink: true,
            showGroupInsert: true,
            showGroupClipboard: true,
            showGroupUndo: true,
            showGroupTextAlign: true,
            showGroupFontStyle: true,
          }).addStyleClass("myRichTextEditor");

          var row = new sap.m.ColumnListItem({
            cells: [richTextEditor],
          });

          idFrame.addItem(row);

          // Initialize arrays if not already initialized
          if (!that._mainSectionTextArray) {
            that._mainSectionTextArray = [];
          }
          if (!that._subSectionTextArray) {
            that._subSectionTextArray = [];
          }

          // Attach the event listener for saving base64 content on change
          richTextEditor.attachChange(function (oEvent) {
            var editorContent = richTextEditor.getValue();
            var base64Content = btoa(editorContent);

            if (isMainSection) {
              // Save main section text as an array
              that._mainSectionTextArray.push(base64Content);
              console.log("Main Section Text Array:", that._mainSectionTextArray);
            } else {
              // Save subsection text as an array
              that._subSectionTextArray.push(base64Content);
              console.log("Sub Section Text Array:", that._subSectionTextArray);
            }
          });

          console.log("Rich Text Area added successfully");
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

        that._addingImageForSubSection = true;
        that._addingTextArea = true;

        if (currentStepIndex >= 0) {
          console.log("current Step  :" + currentStepIndex);

          // Increment the subsection counter
          if (!this._sectionCounters[currentStepIndex]) {
            this._sectionCounters[currentStepIndex] = 1;
          } else {
            this._sectionCounters[currentStepIndex]++;
          }

          // Generate a unique ID for the new Input field
          var inputId = 'SubSection_' + (currentStepIndex + 1) + '.' + this._sectionCounters[currentStepIndex];

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
            this._subSections.push(inputId);
          } else {
            console.error("idFrame not found for SubSection");
          }
        }

        console.log("moving to the next step");

        var subsectionId = inputId;

      },

      onSave: function () {
        var that = this;
        var wizard = that.getView().byId("wizard");

        MessageBox.show("Do you need to save all the provided details?", {
          icon: MessageBox.Icon.QUESTION,
          title: "Complete Steps",
          actions: [MessageBox.Action.YES, MessageBox.Action.NO],
          onClose: function (oAction) {
            if (oAction === MessageBox.Action.YES) {
              console.log("clicked yes");
              that.saveMainSection()
                .then(function (mainSectionIds) {
                  // Save Sub Sections after Main Sections are created
                  that.saveSubSection(mainSectionIds);

                  // Display a message or perform any additional actions after saving
                })
                .catch(function (error) {
                  console.error("Error saving data:", error);
                });

              // User clicked "Yes", perform completion logic

            } else {
              console.log("clicked no");
              // User clicked "No", do nothing or handle as needed
            }
          }
        });

        // Save Main Sections
      },

//       saveMainSection: function () {

//         var oModel = this.getView().getModel();

//         // Array to store created main section IDs
//         var createdMainSectionIds = [];

    
//         return Promise.all(this._mainSections.map((mainSectionId) => {
//           var mainSectionInput = sap.ui.getCore().byId(mainSectionId);



//           if (mainSectionInput) {

//             //   var testdata = [];


//             //   var mainSectionText = this._mainSectionTextArray.filter(function(element, i) {
//             //     return i % 2 === 0;

//             //     testdata.push();
//             // });

//             // var testdata = [];
//             // var mainSectionText = this._mainSectionTextArray.filter(function (element, i) {
//             //   if (i % 2 === 0) {
//             //     testdata.push(element); // Push the element into the testdata array
//             //     return true; // Keep this element in the filtered array
//             //   } else {
//             //     return false; // Exclude this element from the filtered array
//             //   }
//             // });

//             // console.log(mainSectionText);

//             // debugger;

//             // var mainSectionData = {
//             //   // Extract data from the main section input control
//             //   id: "MAIN_0" + this._mainSectionId++, // Adjust as needed
//             //   mainSectiontitle: mainSectionInput.getValue(),
//             //   imagearea: this._inputString || null,
//             //   textarea: testdata || null,

//             // }

//             var testdata = [];
// var mainSectionText = this._mainSectionTextArray.filter(function (element, i) {
//     if (i % 2 === 0) {
//         testdata.push(element)
//         return true; 
//     } else {
//         return false; 
//     }
// });

// console.log(mainSectionText);

// console.log(testdata[0]);
// console.log(testdata[1]);

// debugger;


// var j=0;

// for (j=0;j<=8;j++){

// var mainSectionData = {
    
//     id: "MAIN_0" + this._mainSectionId++, 
//     mainSectiontitle: mainSectionInput.getValue(),
//     imagearea: this._inputString || null,
//     textarea: testdata[j] || null,
// }



// console.log(mainSectionData);
//             debugger;
//             console.log("value of index" + j);

          


            
//             return new Promise(function (resolve, reject) {
//               oModel.create("/MainSection", mainSectionData, {
//                 method: "POST",
//                 success: function () {
//                   MessageToast.show("Main- Section Added Successfully");
//                   createdMainSectionIds.push(mainSectionData.id);
//                   resolve();
//                   console.log("Section saved to DB");

                  
                  
//                 },
              


//                 error: function (error) {
//                   reject(error);
//                 }
              
//               });
            
//             }
//             );
// }
//           }
//         }))
//           .then(function () {
//             // Return the array of created Main Section IDs
//             return createdMainSectionIds;
//           });
//       },

saveMainSection: function () {
  var oModel = this.getView().getModel();
  var createdMainSectionIds = [];
  var promises = [];

  return Promise.all(this._mainSections.map((mainSectionId) => {
      var mainSectionInput = sap.ui.getCore().byId(mainSectionId);

      if (mainSectionInput) {
          var testdata = [];
          var mainSectionText = this._mainSectionTextArray.filter(function (element, i) {
              if (i % 2 === 0) {
                  testdata.push(element)
                  return true; 
              } else {
                  return false; 
              }
          });

          console.log(testdata);
          debugger;

          for (var j = 0; j <= testdata.length; j++) {
              var mainSectionData = {
                  id: "MAIN_0" + this._mainSectionId++, 
                  mainSectiontitle: mainSectionInput.getValue(),
                  imagearea: this._inputString || null,
                  textarea: testdata[j] || null,
              };

              console.log(mainSectionData);
              debugger;
              console.log("value of index" + j);
              debugger;

              var promise = new Promise(function (resolve, reject) {
                  oModel.create("/MainSection", mainSectionData, {
                      method: "POST",
                      success: function () {
                          MessageToast.show("Main- Section Added Successfully");
                          createdMainSectionIds.push(mainSectionData.id);
                          resolve();
                          console.log("Section saved to DB");
                          debugger;
                      },
                      error: function (error) {
                          reject(error);
                      }
                  });
              });

              promises.push(promise);
          }
      }
  }))
  .then(function () {
      return Promise.all(promises);
  })
  .then(function () {
      return createdMainSectionIds;
  });
},



      saveSubSection: function (mainSectionIds) {
        // Implement logic to save Sub Section data
        // Iterate through _subSections array and save the data as needed
        var oModel = this.getView().getModel();
        var createdSubSectionIds = [];

        return Promise.all(this._subSections.map((subSectionId, index) => {
          var subSectionInput = sap.ui.getCore().byId(subSectionId);

          if (subSectionInput) {






            var subSectionData = {
              id: "SUB_0" + this._subSectionCounter++, // Adjust as needed
              subSectiontitle: subSectionInput.getValue() || null,
              parentSection_id: mainSectionId,
              imagearea: this._inputString || null,
              textarea: this._mainsectiontext1 || null,
            };

            console.log(subSectionData);

            return new Promise(function (resolve, reject) {
              oModel.create("/SubSection", subSectionData, {
                method: "POST",
                success: function (data, response) {
                  // Check the response structure and log it
                  console.log("Success Response:", response);

                  // Extract the created Sub Section ID from the response
                  var createdSubSectionId = response.headers["sap-message"].split(":")[1].trim();
                  createdSubSectionIds.push(createdSubSectionId);

                  MessageToast.show("Sub Section Added Successfully");
                  resolve();
                  console.log("Sub Section has been added");
                },
                error: function (error) {
                  // Check the error response structure and log it
                  console.error("Error Response:", error);

                  reject(error);
                }
              });
            });
          }
        }))
          .then(function () {
            // Return the array of created Sub Section IDs
            return createdSubSectionIds;
          })
          .catch(function (error) {
            console.error("Error saving Sub Sections:", error);
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




      onContinue: function () {
        // Handle "Next" button press logic here
        this.onNext();
      },

      onNext: function () {
        // Handle navigation to the next step logic here
        var wizard = this.getView().byId("wizard");
        wizard.nextStep();
      },


      onComplete: function () {


        MessageBox.show("Do you need to complete the steps?", {
          icon: MessageBox.Icon.QUESTION,
          title: "Complete Steps",
          actions: [MessageBox.Action.YES, MessageBox.Action.NO],
          onClose: function (oAction) {
            if (oAction === MessageBox.Action.YES) {

              console.log("clicked yes");
              // User clicked "Yes", perform completion logic

            } else {

              console.log("clicked no");
              // User clicked "No", do nothing or handle as needed
            }
          }
        });
      },


      onUploadComplete: function (oEvent) {

        var response = oEvent.getParameter("response");
        MessageBox.success("File upload complete. Response: " + response);
      },

      onTypeMissmatch: function (oEvent) {

        MessageBox.error("Selected file type does not match the allowed file types");
      },

      onFileSizeExceed: function (oEvent) {

        MessageBox.error("File size exceeds the maximum allowed size");
      },


      onAddImage: function () {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);
        var inputId = 'Image' + this._imagecount++;

        console.log(inputId);
        var container = new sap.m.VBox();

        // Create a Label for bold text
        var boldLabel = new sap.m.Label({
          text: inputId,
          design: 'Bold',
        });
        // Create a new FileUploader with the generated ID
        var fileUploader = new sap.ui.unified.FileUploader({
          id: inputId,
          placeholder: 'Upload Image',
          width: '80%',
          fileType: "png,jpg,jpeg",
          change: that.onChangeDP.bind(that),
          uploadComplete: that.onUploadComplete.bind(that),
          typeMissmatch: that.onTypeMissmatch.bind(that),
          fileSizeExceed: that.onFileSizeExceed.bind(that)
        });

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);
        if (idFrame) {
          // Add the Label and Input field to the VBox
          container.addItem(boldLabel);
          container.addItem(fileUploader);

          // Create a new ColumnListItem with the VBox
          var row = new sap.m.ColumnListItem({
            cells: [container],
          });

          // Get the table and add the new row
          idFrame.addItem(row);

          // Make the Input field visible
          fileUploader.setVisible(true);

          // Determine whether it is a Main Section or SubSection and add the input ID accordingly
          if (that._addingImageForSubSection) {
            that._subSections.push(inputId);
            console.log("Image added successfully to SubSection");
          } else {
            that._mainSections.push(inputId);
            console.log("Image added successfully to Main Section");
          }
        } else {
          console.error("idFrame not found for SubSection");
        }
      },



      onChangeDP: function (oEvent) {

        var that = this;
        var image = new Image();
        var file = oEvent.getParameter("files")[0];
        var reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function () {
          var data = reader.result;

          var inputString = data;
          console.log(inputString);

          // that._inputString = inputString;

          this.input = inputString;
          var wordsToRemove = ["data:image/png;base64,", "data:text/plain;base64,", "data:image/jpeg;base64,"
            , "data:audio/mpeg;base64,", "data:application/vnd.ms-excel;base64,", "data:video/mp4;base64,"];
          var replacement = "";
          var regexPattern = new RegExp(wordsToRemove.join('|'), 'gi');
          var resultString = inputString.replace(regexPattern, replacement);
          console.log(resultString);

          that._inputString = resultString;

          var rs = resultString;

          //console.log(data);


          var base64Data = inputString;
          that.byId("imagePreview").setSrc(base64Data);

          image.onload = function () {

            if (this.width + this.height === 0) {
              that.dpImage = "";
              sap.m.MessageBox.error("Invalid Image!");
            }
          };
        };
        reader.onerror = function (error) {
          //Error Handling
        };

        this.pDialog.then((oDialog) => oDialog.close());
      },

      onAddTable: function (bIsTinyMCE5) {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var textItemId = "Table-" + that.tableitem++;

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId('idFrame' + currentStepIndex);
        if (idFrame) {
          var richTextEditor = new sap.ui.richtexteditor.RichTextEditor({
            id: textItemId,
            width: "100%",
            editorType: sap.ui.richtexteditor.EditorType.bIsTinyMCE5,

            showGroupFont: true,
            showGroupLink: true,
            showGroupInsert: false,
            showGroupClipboard: false,
            showGroupUndo: true,
            showGroupStructure: false,
            showGroupTextAlign: true,
            showGroupFontStyle: true,

            ready: function () {
              bIsTinyMCE5
                ? this.addButtonGroup("table") // show only the table group
                : this.addButtonGroup("table");
            },
          }).addStyleClass("myRichTextEditor");

          var row = new sap.m.ColumnListItem({
            cells: [richTextEditor],
          });

          idFrame.addItem(row);

          var isMainSection = that._mainSections.some(function (section) {
            return section.richTextEditor === richTextEditor;
          });

          if (that._addingTextArea) {
            that._subSections.push({
              id: textItemId,
              richTextEditor: richTextEditor,
            });

            // Attach the event listener for saving base64 content on change
            richTextEditor.attachChange(function (oEvent) {
              var editorContent = richTextEditor.getValue();
              var base64Content = btoa(editorContent);
              that._subsectiontext = base64Content;
              console.log(that._subsectiontext);
            });

            console.log("Rich Text Area added successfully to SubSection");
          } else {
            that._mainSections.push({
              id: textItemId,
              richTextEditor: richTextEditor,
            });

            // Attach the event listener for saving base64 content on change
            richTextEditor.attachChange(function (oEvent) {
              var editorContent = richTextEditor.getValue();
              var base64Content = btoa(editorContent);
              that._mainsectiontext = base64Content;
              console.log(that._mainsectiontext);
            });

            console.log("Rich Text Area added successfully to Main Section");
          }
        } else {
          console.error("idFrame not found for step " + currentStepIndex);
        }
      },

      onPreview: function () {

        this.getOwnerComponent().getRouter().navTo("PreviewForm");

        console.log("Navigating to Next Page...")
      }

    });
  }
);
