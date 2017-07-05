.class Lcom/android/lineageos/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/lineageos/LocalePicker;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/LocalePicker;
    .param p2, "val$dialogId"    # I

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/lineageos/LocalePicker$1;->this$0:Lcom/android/lineageos/LocalePicker;

    iput p2, p0, Lcom/android/lineageos/LocalePicker$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/lineageos/LocalePicker$1;->this$0:Lcom/android/lineageos/LocalePicker;

    iget v1, p0, Lcom/android/lineageos/LocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/lineageos/LocalePicker;->removeDialog(I)V

    .line 97
    iget-object v0, p0, Lcom/android/lineageos/LocalePicker$1;->this$0:Lcom/android/lineageos/LocalePicker;

    invoke-virtual {v0}, Lcom/android/lineageos/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 98
    iget-object v0, p0, Lcom/android/lineageos/LocalePicker$1;->this$0:Lcom/android/lineageos/LocalePicker;

    invoke-static {v0}, Lcom/android/lineageos/LocalePicker;->-get0(Lcom/android/lineageos/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lineageos/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 95
    return-void
.end method
