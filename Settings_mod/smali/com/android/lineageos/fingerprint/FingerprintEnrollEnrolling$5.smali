.class Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling$5;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling$5;->this$0:Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;

    const v2, 0x7f0c0531

    invoke-virtual {v1, v2}, Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;->-wrap1(Lcom/android/lineageos/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method
