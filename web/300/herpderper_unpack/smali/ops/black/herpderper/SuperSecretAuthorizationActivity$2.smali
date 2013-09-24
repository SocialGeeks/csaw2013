.class Lops/black/herpderper/SuperSecretAuthorizationActivity$2;
.super Ljava/lang/Object;
.source "SuperSecretAuthorizationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lops/black/herpderper/SuperSecretAuthorizationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;


# direct methods
.method constructor <init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$2;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 90
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$2;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    invoke-virtual {v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->attemptLogin()V

    .line 91
    return-void
.end method
