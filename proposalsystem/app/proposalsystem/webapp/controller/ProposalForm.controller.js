sap.ui.define(
  [
    "sap/ui/core/mvc/Controller",
    "sap/m/Input",
    "sap/m/MessageToast",
    "sap/ui/richtexteditor/RichTextEditor",
    "sap/m/MessageBox",
    "sap/ui/richtexteditor/library",
    "sap/ui/model/json/JSONModel",
  ],
  function (
    Controller,
    Input,
    MessageToast,
    RichTextEditor,
    MessageBox,
    JSONModel,
    library
  ) {
    "use strict";
    var mainSectionData = null;
    return Controller.extend("ns.propose.controller.ProposalForm", {
      _sectionTitle: 1,
      _mainSectionId: 1,
      _SubSectionId: 1,
      _mainSections: [], // Array to store Main Section data
      _subsection: 1,
      _subSections: [],
      _imagecount: 1,
      _inputString: "",
      _subSectionCounter: 2001,
      _sectionCounters: {},

      _mainSectionCounter: 1000,

      _table: 1,
      _tableitem: 1,
      textitem: 1,

      _mainSectionTextArray: [],
      _subSectionTextArray: [],

      onInit: function () {
        this._mainSectionTextArray = [];
        this._subSectionTextArray = [];

        this._tableitem = 1;

        this._sectionTitle = 1;
        this._mainSectionId = 1;
        this._mainSections = [1];
        this._subsection1 = 1;
        this._subsection = [1];
        this._SubSectionId = 1;
        this._imagecount = 1;

        this._subSectionCounter = 2001;
        this._sectionCounters = {};

        this._setInitialSectionTitle();

        this._table = 1;
        this.textitem = 1;

        this._mainSectionCounter = 1000;
      },
      _setInitialSectionTitle: function () {
        var that = this;
        // Generate a unique ID for the new Input field
        var wizard = this.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var allSteps = wizard.getSteps();
        var currentStepIndex = allSteps.indexOf(currentStep); // Adding 1 since steps are usually 1-indexed
        var inputId = "Section-" + this._sectionTitle++;
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
          design: "Bold",
        });

        // Create a new Input field with the generated ID
        var inputField = new sap.m.Input({
          id: inputId,
          placeholder: "Enter your title...",
          width: "80%",
        });

        // Add the Label and Input field to the VBox
        container.addItem(boldLabel);
        container.addItem(inputField);

        // Create a new ColumnListItem with the VBox
        var row = new sap.m.ColumnListItem({
          cells: [container],
        });

        // Get the table and add the new row
        var idFrame = that.getView().byId("idFrame" + currentStepIndex);

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

      // _setInitialSectionTitle: function () {
      //   var that = this;
      //   var wizard = this.getView().byId("wizard");
      //   var currentStep = wizard.getProgressStep();
      //   var allSteps = wizard.getSteps();
      //   var currentStepIndex = allSteps.indexOf(currentStep) + 1;
      //   var inputId = "Section-" + this._sectionTitle++;
      //   this._titleSubInputCounter = 0;
      //   this._titleSubInputCounter++;

      //   if (currentStepIndex === -1) {
      //     currentStepIndex++;
      //   }

      //   this._SubSectionId = inputId;

      //   var container = new sap.m.VBox();
      //   var boldLabel = new sap.m.Label({
      //     text: inputId,
      //     design: "Bold",
      //   });

      //   var inputField = new sap.m.Input({
      //     id: inputId,
      //     placeholder: "Enter your title...",
      //     width: "80%",
      //   });

      //   container.addItem(boldLabel);
      //   container.addItem(inputField);

      //   var row = new sap.m.ColumnListItem({
      //     cells: [container],
      //   });

      //   var idFrame = that.getView().byId("idFrame" + currentStepIndex);

      //   if (idFrame) {
      //     idFrame.addItem(row);
      //     inputField.setVisible(true);
      //     this._mainSections.push(inputId);
      //     console.log("Section added successfully.");
      //   } else {
      //     console.error("idFrame not found for step " + currentStepIndex);
      //   }
      // },

      onAddRowTextArea: function () {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var textItemId = "Text-" + that.textitem++;

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId("idFrame" + currentStepIndex);
        if (idFrame) {
          var richTextEditor = new sap.ui.richtexteditor.RichTextEditor({
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

      onSubSection: function () {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var idFrame = that.getView().byId("idFrame" + currentStepIndex);

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
          var inputId =
            "SubSection_" +
            (currentStepIndex + 1) +
            "." +
            this._sectionCounters[currentStepIndex];

          console.log(inputId);

          var container = new sap.m.VBox();

          // Create a Label for bold text
          var boldLabel = new sap.m.Label({
            text: inputId,
            design: "Bold",
          });

          // Create a new Input field with the generated ID
          var inputField = new sap.m.Input({
            id: inputId,
            placeholder: "Enter your title...",
            width: "80%",
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
              that
                .saveMainSection()
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
          },
        });

        // Save Main Sections
      },

      //   saveMainSection: function () {
      //     var oModel = this.getView().getModel();
      //     var createdMainSectionIds = [];
      //     var that = this;

      //     // Initialize _mainSectionCounter if it's not already initialized
      //     if (!this._mainSectionCounter) {
      //         this._mainSectionCounter = 0;
      //     }

      //     return Promise.all(this._mainSections.map((mainSection) => {
      //         // Ensure mainSection.richTextEditor is defined before accessing it
      //         if (!mainSection || !mainSection.richTextEditor) {
      //             console.error("Rich text editor is not found for main section:", mainSection);
      //             return Promise.resolve(); // Skip this main section and continue with the next one
      //         }

      //         var mainSectionInput = mainSection.richTextEditor;
      //         var mainSectionTitle = mainSection.title; // Assuming you have a 'title' property for the main section
      //         var mainSectionText = mainSectionInput.getValue(); // Get the content of the textarea for this main section

      //         var mainSectionData = {
      //             id: "MAIN_0" + that._mainSectionCounter++,
      //             mainSectiontitle: mainSectionTitle, // Assign the title as it is
      //             imagearea: that._inputString || null,
      //             textarea: btoa(mainSectionText) || null, // Convert the textarea content to base64 and assign it
      //         };

      //         console.log("Main Section Data:", mainSectionData);

      //         return new Promise(function (resolve, reject) {
      //             oModel.create("/MainSection", mainSectionData, {
      //                 method: "POST",
      //                 success: function () {
      //                     MessageToast.show("Main Section Added Successfully");
      //                     createdMainSectionIds.push(mainSectionData.id);
      //                     resolve();
      //                     console.log("Main Section saved to DB");
      //                 },
      //                 error: function (error) {
      //                     reject(error);
      //                 }
      //             });
      //         });
      //     }))

      //     .then(function () {
      //         return createdMainSectionIds;
      //     });
      // },

      //   saveMainSection: function () {
      //     var that=this;
      //     // Implement logic to save Main Section data
      //     // Iterate through _mainSections array and save the data as needed
      //     var oModel = this.getView().getModel();

      //     // Array to store created main section IDs
      //     var createdMainSectionIds = [];

      //     // Use Promise to handle asynchronous operation
      //     return Promise.all(this._mainSections.map((mainSectionId) => {
      //         var mainSectionInput = sap.ui.getCore().byId(mainSectionId);

      //         if (mainSectionInput) {

      //             var mainSectionData = {
      //                 // Extract data from the main section input control
      //                 id: "MAIN_0" + this._mainSectionCounter++,
      //                 mainSectiontitle: mainSectionInput.getValue(),
      //                 imagearea: this._inputString || null,
      //                 textarea : this._mainsectiontext || null,

      //             };

      //             console.log("data",mainSectionData);

      //             // Use Promise to handle asynchronous operation
      //             return new Promise(function (resolve, reject) {
      //                 oModel.create("/MainSection", mainSectionData, {
      //                     method: "POST",
      //                     success: function () {
      //                       that.getView().byId("IDGenButton3").setVisible(true);
      //                         MessageToast.show("Main- Section Added Successfully");
      //                         createdMainSectionIds.push(mainSectionData.id);
      //                         resolve();
      //                         console.log("Section saved to DB");
      //                     },

      //                     error: function (error) {
      //                         reject(error);
      //                     }
      //                 });
      //             });
      //         }
      //     }))
      //     .then(function () {
      //         // Return the array of created Main Section IDs
      //         return createdMainSectionIds;
      //     });
      // },

      // onPreviewPress: function(mainSectionData){

      //   console.log(mainSectionData);

      //   this.getOwnerComponent().getRouter().navTo("PreviewForm");

      //   console.log("Navigating to Next Page...")
      // },

      saveMainSection: function () {
        var that = this;
        var oModel = this.getView().getModel();
        var createdMainSectionIds = [];
        // var mainSectionData = null; // Define mainSectionData here

        return Promise.all(
          this._mainSections.map((mainSectionId) => {
            var mainSectionInput = sap.ui.getCore().byId(mainSectionId);

            if (mainSectionInput) {
              mainSectionData = {
                id: this._mainSectionCounter++,
                mainSectiontitle: mainSectionInput.getValue(),
                imagearea: this._inputString || null,
                textarea: this._mainsectiontext || null,
              };

              return new Promise(function (resolve, reject) {
                oModel.create("/MainSection", mainSectionData, {
                  method: "POST",
                  success: function () {
                    that.getView().byId("IDGenButton3").setVisible(true);
                    MessageToast.show("Main- Section Added Successfully");
                    createdMainSectionIds.push(mainSectionData.id);
                    resolve(mainSectionData); // Pass mainSectionData to the next then() block
                  },
                  error: function (error) {
                    reject(error);
                  },
                });
              });
            }
          })
        )
          .then(function () {
            return createdMainSectionIds;
          })
          .then(function (mainSectionData) {
            // Call onPreviewPress and pass mainSectionData
            // that.onPreviewPress(mainSectionData);
          });
      },

      onPreviewPress: function () {
        // Access mainSectionData here
        if (mainSectionData) {
          // Do something with mainSectionData
          console.log(mainSectionData);
        } else {
          console.log("Main section data is not available.");
        }
        this.getOwnerComponent().getRouter().navTo("PreviewForm", {
          mainSectionData:mainSectionData.id
        });
      },

      saveSubSection: function (mainSectionIds) {
        // Implement logic to save Sub Section data
        // Iterate through _subSections array and save the data as needed
        var oModel = this.getView().getModel();
        var createdSubSectionIds = [];

        return Promise.all(
          this._subSections.map((subSectionId, index) => {
            var subSectionInput = sap.ui.getCore().byId(subSectionId);

            if (subSectionInput) {
              var mainSectionId = mainSectionIds[index];

              var subSectionData = {
                id: this._subSectionCounter++, // Adjust as needed
                subSectiontitle: subSectionInput.getValue() || null,
                parentSection_id: mainSectionId,
                imagearea: this._inputString || null,
                textarea: this._subsectiontext || null,
              };

              console.log("data", subSectionData);

              return new Promise(function (resolve, reject) {
                oModel.create("/SubSection", subSectionData, {
                  method: "POST",
                  success: function (data, response) {
                    // Check the response structure and log it
                    console.log("Success Response:", response);

                    // Extract the created Sub Section ID from the response
                    var createdSubSectionId = response.headers["sap-message"]
                      .split(":")[1]
                      .trim();
                    createdSubSectionIds.push(createdSubSectionId);

                    MessageToast.show("Sub Section Added Successfully");
                    resolve();
                    console.log("Sub Section has been added");
                  },
                  error: function (error) {
                    // Check the error response structure and log it
                    console.error("Error Response:", error);

                    reject(error);
                  },
                });
              });
            }
          })
        )
          .then(function () {
            // Return the array of created Sub Section IDs
            return createdSubSectionIds;
          })
          .catch(function (error) {
            console.error("Error saving Sub Sections:", error);
          });
      },

      // saveSubSection: function (mainSectionIds) {
      //   var oModel = this.getView().getModel();
      //   var createdSubSectionIds = [];
      //   var that = this;

      //   return Promise.all(this._subSections.map((subSection) => {
      //     var subSectionInput = subSection.richTextEditor;
      //     var subSectionText = subSectionInput.getValue(); // Get the content of the textarea for this sub section

      //     if (subSectionInput) {
      //       var mainSectionId = mainSectionIds[Math.floor(that._subSections.indexOf(subSection) / 2)];

      //       var subSectionData = {
      //         id: "SUB_0" + that._subSectionCounter++,
      //         subSectiontitle: subSectionText || null,
      //         parentSection_id: mainSectionId,
      //         imagearea: null,
      //         textarea: btoa(subSectionText) || null, // Convert the textarea content to base64 and assign it
      //       };

      //       console.log("Sub Section Data:", subSectionData);

      //       return new Promise(function (resolve, reject) {
      //         oModel.create("/SubSection", subSectionData, {
      //           method: "POST",
      //           success: function (data, response) {
      //             var createdSubSectionId = response.headers["sap-message"].split(":")[1].trim();
      //             createdSubSectionIds.push(createdSubSectionId);
      //             MessageToast.show("Sub Section Added Successfully");
      //             resolve();
      //           },
      //           error: function (error) {
      //             reject(error);
      //           }
      //         });
      //       });
      //     }
      //   }))
      //   .then(function () {
      //     return createdSubSectionIds;
      //   })
      //   .catch(function (error) {
      //     console.error("Error saving Sub Sections:", error);
      //   });
      // },

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
          },
        });
      },

      onUploadComplete: function (oEvent) {
        var response = oEvent.getParameter("response");
        MessageBox.success("File upload complete. Response: " + response);
      },

      onTypeMissmatch: function (oEvent) {
        MessageBox.error(
          "Selected file type does not match the allowed file types"
        );
      },

      onFileSizeExceed: function (oEvent) {
        MessageBox.error("File size exceeds the maximum allowed size");
      },

      onAddImage: function () {
        var that = this;
        var wizard = that.getView().byId("wizard");
        var currentStep = wizard.getProgressStep();
        var currentStepIndex = wizard.getSteps().indexOf(currentStep);
        var idFrame = that.getView().byId("idFrame" + currentStepIndex);
        var inputId = "Image" + this._imagecount++;

        console.log(inputId);
        var container = new sap.m.VBox();

        // Create a Label for bold text
        var boldLabel = new sap.m.Label({
          text: inputId,
          design: "Bold",
        });
        // Create a new FileUploader with the generated ID
        var fileUploader = new sap.ui.unified.FileUploader({
          id: inputId,
          placeholder: "Upload Image",
          width: "80%",
          fileType: "png,jpg,jpeg",
          change: that.onChangeDP.bind(that),
          uploadComplete: that.onUploadComplete.bind(that),
          typeMissmatch: that.onTypeMissmatch.bind(that),
          fileSizeExceed: that.onFileSizeExceed.bind(that),
        });

        // Check if idFrame exists in the view
        var idFrame = that.getView().byId("idFrame" + currentStepIndex);
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
          var wordsToRemove = [
            "data:image/png;base64,",
            "data:text/plain;base64,",
            "data:image/jpeg;base64,",
            "data:audio/mpeg;base64,",
            "data:application/vnd.ms-excel;base64,",
            "data:video/mp4;base64,",
          ];
          var replacement = "";
          var regexPattern = new RegExp(wordsToRemove.join("|"), "gi");
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
        var idFrame = that.getView().byId("idFrame" + currentStepIndex);
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
    });
  }
);
