.class public Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;
.super Landroid/os/AsyncTask;
.source "SuperSecretAuthorizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lops/black/herpderper/SuperSecretAuthorizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;


# direct methods
.method public constructor <init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 255
    const/4 v2, 0x4

    :try_start_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const v4, 0x7f040011

    invoke-virtual {v3, v4}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    #getter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmail:Ljava/lang/String;
    invoke-static {v3}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$200(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    #getter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPassword:Ljava/lang/String;
    invoke-static {v3}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$300(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    invoke-virtual {v3}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->sigChar()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 258
    .local v1, httpRequestParams:[Ljava/lang/String;
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    iget-object v2, v2, Lops/black/herpderper/SuperSecretAuthorizationActivity;->authreq:Lops/black/herpderper/AuthRequest;

    invoke-virtual {v2, v1}, Lops/black/herpderper/AuthRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    iget-object v3, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const v4, 0x7f04000e

    invoke-virtual {v3, v4}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setMessage(Ljava/lang/CharSequence;)V

    .line 260
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 264
    .end local v1           #httpRequestParams:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const/4 v1, 0x0

    #setter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;
    invoke-static {v0, v1}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$402(Lops/black/herpderper/SuperSecretAuthorizationActivity;Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;)Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    .line 287
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const/4 v1, 0x0

    #calls: Lops/black/herpderper/SuperSecretAuthorizationActivity;->showProgress(Z)V
    invoke-static {v0, v1}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$600(Lops/black/herpderper/SuperSecretAuthorizationActivity;Z)V

    .line 288
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "success"

    .prologue
    .line 272
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const/4 v1, 0x0

    #setter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;
    invoke-static {v0, v1}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$402(Lops/black/herpderper/SuperSecretAuthorizationActivity;Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;)Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    .line 273
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusMessageView:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$502(Lops/black/herpderper/SuperSecretAuthorizationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const/4 v1, 0x0

    #calls: Lops/black/herpderper/SuperSecretAuthorizationActivity;->showProgress(Z)V
    invoke-static {v0, v1}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$600(Lops/black/herpderper/SuperSecretAuthorizationActivity;Z)V

    .line 277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    #getter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$700(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    #getter for: Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->access$700(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 280
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->this$0:Lops/black/herpderper/SuperSecretAuthorizationActivity;

    const v2, 0x7f040010

    invoke-virtual {v1, v2}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setStatus(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 248
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
