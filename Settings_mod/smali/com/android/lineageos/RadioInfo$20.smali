.class Lcom/android/lineageos/RadioInfo$20;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/lineageos/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/RadioInfo;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/lineageos/RadioInfo$20;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/lineageos/RadioInfo$20;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v0}, Lcom/android/lineageos/RadioInfo;->-get6(Lcom/android/lineageos/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lineageos/RadioInfo$20;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v1}, Lcom/android/lineageos/RadioInfo;->-get7(Lcom/android/lineageos/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/android/lineageos/RadioInfo$20;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v0}, Lcom/android/lineageos/RadioInfo;->-get4(Lcom/android/lineageos/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lineageos/RadioInfo$20;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v1}, Lcom/android/lineageos/RadioInfo;->-get5(Lcom/android/lineageos/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/android/lineageos/RadioInfo$20;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v0}, Lcom/android/lineageos/RadioInfo;->-get1(Lcom/android/lineageos/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lineageos/RadioInfo$20;->this$0:Lcom/android/lineageos/RadioInfo;

    invoke-static {v1}, Lcom/android/lineageos/RadioInfo;->-get2(Lcom/android/lineageos/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    return-void
.end method
