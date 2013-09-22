.class public Lops/black/herpderper/SuperSecretAuthorizationActivity;
.super Landroid/app/Activity;
.source "SuperSecretAuthorizationActivity.java"

# interfaces
.implements Lops/black/herpderper/AsyncResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;
    }
.end annotation


# static fields
.field public static final EXTRA_EMAIL:Ljava/lang/String; = "com.example.android.authenticatordemo.extra.EMAIL"


# instance fields
.field authreq:Lops/black/herpderper/AuthRequest;

.field private mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

.field private mEmail:Ljava/lang/String;

.field private mEmailView:Landroid/widget/EditText;

.field private mLoginFormView:Landroid/view/View;

.field private mLoginStatusMessageView:Landroid/widget/TextView;

.field private mLoginStatusView:Landroid/view/View;

.field private mMsgMessage:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mPasswordView:Landroid/widget/EditText;

.field private mStatusMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lops/black/herpderper/AuthRequest;

    invoke-direct {v0}, Lops/black/herpderper/AuthRequest;-><init>()V

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->authreq:Lops/black/herpderper/AuthRequest;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginFormView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lops/black/herpderper/SuperSecretAuthorizationActivity;Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;)Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    return-object p1
.end method

.method static synthetic access$502(Lops/black/herpderper/SuperSecretAuthorizationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusMessageView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lops/black/herpderper/SuperSecretAuthorizationActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$700(Lops/black/herpderper/SuperSecretAuthorizationActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method private showProgress(Z)V
    .locals 7
    .parameter "show"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 210
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v1, v6, :cond_2

    .line 211
    invoke-virtual {p0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v5, 0x10e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 213
    .local v0, shortAnimTime:I
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v5, Lops/black/herpderper/SuperSecretAuthorizationActivity$3;

    invoke-direct {v5, p0, p1}, Lops/black/herpderper/SuperSecretAuthorizationActivity$3;-><init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;Z)V

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 224
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginFormView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginFormView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lops/black/herpderper/SuperSecretAuthorizationActivity$4;

    invoke-direct {v2, p0, p1}, Lops/black/herpderper/SuperSecretAuthorizationActivity$4;-><init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 240
    .end local v0           #shortAnimTime:I
    :goto_2
    return-void

    .restart local v0       #shortAnimTime:I
    :cond_0
    move v1, v3

    .line 214
    goto :goto_0

    :cond_1
    move v3, v2

    .line 225
    goto :goto_1

    .line 237
    .end local v0           #shortAnimTime:I
    :cond_2
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusView:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginFormView:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v1, v5

    .line 237
    goto :goto_3

    :cond_4
    move v5, v4

    .line 238
    goto :goto_4
.end method


# virtual methods
.method public attemptLogin()V
    .locals 6

    .prologue
    const v4, 0x7f040004

    const/4 v3, 0x0

    .line 109
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    if-eqz v2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmail:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPassword:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, cancel:Z
    const/4 v1, 0x0

    .line 125
    .local v1, focusView:Landroid/view/View;
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    .line 128
    const/4 v0, 0x1

    .line 136
    :cond_1
    :goto_1
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {p0, v4}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    .line 139
    const/4 v0, 0x1

    .line 146
    :cond_2
    :goto_2
    if-eqz v0, :cond_5

    .line 149
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    goto :goto_0

    .line 129
    :cond_3
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 130
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    const v3, 0x7f040007

    invoke-virtual {p0, v3}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    .line 132
    const/4 v0, 0x1

    goto :goto_1

    .line 140
    :cond_4
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmail:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    const v3, 0x7f040006

    invoke-virtual {p0, v3}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    .line 143
    const/4 v0, 0x1

    goto :goto_2

    .line 153
    :cond_5
    :try_start_1
    iget-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusMessageView:Landroid/widget/TextView;

    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 154
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->showProgress(Z)V

    .line 155
    new-instance v2, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    invoke-direct {v2, p0}, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;-><init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;)V

    iput-object v2, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    .line 156
    iget-object v3, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mAuthTask:Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lops/black/herpderper/SuperSecretAuthorizationActivity$UserLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 54
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->authreq:Lops/black/herpderper/AuthRequest;

    iput-object p0, v0, Lops/black/herpderper/AuthRequest;->delegate:Lops/black/herpderper/AsyncResponse;

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/16 v0, 0x539

    div-int/lit8 v0, v0, 0x0

    .line 61
    :cond_0
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.example.android.authenticatordemo.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmail:Ljava/lang/String;

    .line 65
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmailView:Landroid/widget/EditText;

    iget-object v1, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mPasswordView:Landroid/widget/EditText;

    new-instance v1, Lops/black/herpderper/SuperSecretAuthorizationActivity$1;

    invoke-direct {v1, p0}, Lops/black/herpderper/SuperSecretAuthorizationActivity$1;-><init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 80
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginFormView:Landroid/view/View;

    .line 81
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusView:Landroid/view/View;

    .line 82
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mLoginStatusMessageView:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mStatusMessage:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mMsgMessage:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lops/black/herpderper/SuperSecretAuthorizationActivity$2;

    invoke-direct {v1, p0}, Lops/black/herpderper/SuperSecretAuthorizationActivity$2;-><init>(Lops/black/herpderper/SuperSecretAuthorizationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public processFinish(Ljava/lang/String;)V
    .locals 7
    .parameter "output"

    .prologue
    const v6, 0x7f040010

    .line 182
    new-instance v5, Lops/black/herpderper/AuthRequest;

    invoke-direct {v5}, Lops/black/herpderper/AuthRequest;-><init>()V

    iput-object v5, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->authreq:Lops/black/herpderper/AuthRequest;

    .line 183
    iget-object v5, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->authreq:Lops/black/herpderper/AuthRequest;

    iput-object p0, v5, Lops/black/herpderper/AuthRequest;->delegate:Lops/black/herpderper/AsyncResponse;

    .line 185
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 187
    .local v3, response:Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, status:Ljava/lang/String;
    const-string v5, "msg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, msg:Ljava/lang/String;
    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    const v5, 0x7f04000d

    invoke-virtual {p0, v5}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setStatus(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {p0, v2}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #response:Lorg/json/JSONObject;
    .end local v4           #status:Ljava/lang/String;
    :goto_0
    return-void

    .line 193
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #response:Lorg/json/JSONObject;
    .restart local v4       #status:Ljava/lang/String;
    :cond_0
    const v5, 0x7f040010

    invoke-virtual {p0, v5}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setStatus(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p0, v2}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #response:Lorg/json/JSONObject;
    .end local v4           #status:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v6}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setStatus(Ljava/lang/CharSequence;)V

    .line 201
    const v5, 0x7f04000a

    invoke-virtual {p0, v5}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 168
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mMsgMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 164
    iget-object v0, p0, Lops/black/herpderper/SuperSecretAuthorizationActivity;->mStatusMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public sigChar()Ljava/lang/String;
    .locals 5

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lops/black/herpderper/SuperSecretAuthorizationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v2

    .line 175
    .local v2, sigChars:[C
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #sigChars:[C
    :goto_0
    return-object v3

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
