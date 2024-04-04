sap.ui.define(
  ["sap/ui/core/mvc/Controller", "sap/m/Image"],
  function (Controller, Image) {
    "use strict";
    var selectedItem;

    return Controller.extend("ns.propose.controller.PreviewForm", {
      onInit: function () {
        var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
        oRouter
          .getRoute("PreviewForm")
          .attachMatched(this.onObjectMatched, this);
      },
      onObjectMatched(oEvent) {
        var oArgs, oView;
        oArgs = oEvent.getParameter("arguments");
        oView = this.getView();
        console.log(oArgs.mergeDatas);
        selectedItem = oArgs.mergeDatas;
        oView.bindElement({
          path: "/PS_MAIN_SECTION(" + selectedItem + ")",
        });
        this.association();
      },
      association: function () {
        var oModel = this.getOwnerComponent().getModel();
        var oJSON = new sap.ui.model.json.JSONModel();
        var oJSON1 = new sap.ui.model.json.JSONModel();

        oModel.read("/PS_MAIN_SECTION(" + selectedItem + ")", {
          urlParameters: {
            $expand: "PS_SUB_SECTION",
          },
          method: "GET",
          success: function (response) {
            //debugger;
            console.log(response);
            console.log(response.PS_SUB_SECTION.results[0].sub_title);
            console.log(response.PS_SUB_SECTION.results[0].sub_description);
            var mainData = {
              title: response.title,
              Text: atob(response.description),
              image: response.section_image,
              sub_title: response.PS_SUB_SECTION.results[0].sub_title,
              sub_description: atob(
                response.PS_SUB_SECTION.results[0].sub_description
              ),
              sub_image: response.PS_SUB_SECTION.results[0].sub_section_image,
            };
            // var subData={
            //   sub_title:response.PS_SUB_SECTION.results[0].sub_title,
            //   sub_description: atob(response.PS_SUB_SECTION.results[0].sub_description),
            // }
            var imgData = mainData.image;
            var imageUrl = "data:image/jpeg;base64," + imgData;

            // Set the image source in the Image control
            var oImage = this.getView().byId("imagePreview");
            oImage.setSrc(imageUrl);

            var subimgData = mainData.sub_image;
            var imageUrl = "data:image/jpeg;base64," + subimgData;

            // Set the image source in the Image control
            var oImage = this.getView().byId("subimagePreview");
            oImage.setSrc(imageUrl);

            console.log("img", imgData);

            oJSON.setData(mainData);
            this.getView().setModel(oJSON, "ven");
            // oJSON1.setData(subData);
            // this.getView().setModel(oJSON, "ven1");
          }.bind(this),
          error: function (error) {
            console.error("Error fetching image data:", error);
          },
        });
      },
    });
  }
);
