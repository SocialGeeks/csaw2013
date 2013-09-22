.class public Lops/black/herpderper/TrustModifier;
.super Ljava/lang/Object;
.source "TrustModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lops/black/herpderper/TrustModifier$1;,
        Lops/black/herpderper/TrustModifier$AlwaysTrustManager;,
        Lops/black/herpderper/TrustModifier$TrustingHostnameVerifier;
    }
.end annotation


# static fields
.field private static final TRUSTING_HOSTNAME_VERIFIER:Lops/black/herpderper/TrustModifier$TrustingHostnameVerifier;

.field private static factory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lops/black/herpderper/TrustModifier$TrustingHostnameVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lops/black/herpderper/TrustModifier$TrustingHostnameVerifier;-><init>(Lops/black/herpderper/TrustModifier$1;)V

    sput-object v0, Lops/black/herpderper/TrustModifier;->TRUSTING_HOSTNAME_VERIFIER:Lops/black/herpderper/TrustModifier$TrustingHostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static declared-synchronized prepFactory(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 7
    .parameter "httpsConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 45
    const-class v2, Lops/black/herpderper/TrustModifier;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lops/black/herpderper/TrustModifier;->factory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 47
    .local v0, ctx:Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;-><init>(Lops/black/herpderper/TrustModifier$1;)V

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 48
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lops/black/herpderper/TrustModifier;->factory:Ljavax/net/ssl/SSLSocketFactory;

    .line 50
    .end local v0           #ctx:Ljavax/net/ssl/SSLContext;
    :cond_0
    sget-object v1, Lops/black/herpderper/TrustModifier;->factory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static relaxHostChecking(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 33
    instance-of v2, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 34
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 35
    .local v1, httpsConnection:Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v1}, Lops/black/herpderper/TrustModifier;->prepFactory(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 36
    .local v0, factory:Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 37
    sget-object v2, Lops/black/herpderper/TrustModifier;->TRUSTING_HOSTNAME_VERIFIER:Lops/black/herpderper/TrustModifier$TrustingHostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 39
    .end local v0           #factory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v1           #httpsConnection:Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    return-void
.end method
