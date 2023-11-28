sap.ui.define(
  ['sap/ui/core/Fragment', './AddReviewDialogHandler'],
  function (Fragment, AddReviewDialogHandler) {
    'use strict'

    return {
      openDialog: async function (oEvent) {
        const sRowBindingPath = oEvent
          .getSource()
          .getParent()
          .getParent()
          .getBindingContextPath()
        console.log('THE BUTTON', oEvent.getSource())
        const oBooklistPage = sap.ui.getCore().byId('bookshop::BooksList')

        if (!this.oAddReviewDialog) {
          this.sReviewDialogId = `${oBooklistPage.getId()}-AddReviewDialog`
          this.oAddReviewDialog = await Fragment.load({
            id: this.sReviewDialogId,
            name: 'bookshop.custom.AddReview.AddReviewDialog'
          })
          oBooklistPage.addDependent(this.oAddReviewDialog)
        }
        this.oAddReviewDialog.detachBeforeOpen(
          AddReviewDialogHandler.beforeOpenDialog
        )
        this.oAddReviewDialog.open()
      }
    }
  }
)
