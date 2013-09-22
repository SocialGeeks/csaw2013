.class Lops/black/herpderper/TrustModifier$AlwaysTrustManager;
.super Ljava/lang/Object;
.source "TrustModifier.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lops/black/herpderper/TrustModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlwaysTrustManager"
.end annotation


# instance fields
.field C:Ljava/lang/String;

.field CN1:Ljava/lang/String;

.field CN2:Ljava/lang/String;

.field L:Ljava/lang/String;

.field O1:Ljava/lang/String;

.field O2:Ljava/lang/String;

.field OU:Ljava/lang/String;

.field SERIAL:Ljava/math/BigInteger;

.field ST:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "CN=ROOT CA"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->CN1:Ljava/lang/String;

    .line 62
    const-string v0, "CN=webchal.isis.poly.edu"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->CN2:Ljava/lang/String;

    .line 63
    const-string v0, "OU=Black Ops"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->OU:Ljava/lang/String;

    .line 64
    const-string v0, "O=Research and Development"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->O1:Ljava/lang/String;

    .line 65
    const-string v0, "O=Clandestine Automations Intl"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->O2:Ljava/lang/String;

    .line 66
    const-string v0, "L=New York"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->L:Ljava/lang/String;

    .line 67
    const-string v0, "ST=New York"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->ST:Ljava/lang/String;

    .line 68
    const-string v0, "C=US"

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->C:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "4919"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->SERIAL:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>(Lops/black/herpderper/TrustModifier$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;-><init>()V

    return-void
.end method

.method private isValid([Ljava/lang/String;[Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/Boolean;
    .locals 7
    .parameter "issuerDN"
    .parameter "subjectDN"
    .parameter "serial"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    aget-object v0, p1, v2

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->CN1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p1, v3

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->OU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p1, v4

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->O1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p1, v5

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->O2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p1, v6

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    aget-object v0, p1, v0

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->ST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    aget-object v0, p1, v0

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v2

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->CN2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v3

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->OU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v4

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->O1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v5

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->O2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v6

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->ST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    iget-object v1, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->SERIAL:Ljava/math/BigInteger;

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private parseDNFields(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "dnString"

    .prologue
    .line 99
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 73
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null or zero-length certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 78
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null or zero-length authentication type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_3
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->parseDNFields(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, issuerDN:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->parseDNFields(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, subjectDN:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 85
    .local v2, serial:Ljava/math/BigInteger;
    invoke-direct {p0, v1, v3, v2}, Lops/black/herpderper/TrustModifier$AlwaysTrustManager;->isValid([Ljava/lang/String;[Ljava/lang/String;Ljava/math/BigInteger;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 86
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Untrusted certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #issuerDN:[Ljava/lang/String;
    .end local v2           #serial:Ljava/math/BigInteger;
    .end local v3           #subjectDN:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Untrusted certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #issuerDN:[Ljava/lang/String;
    .restart local v2       #serial:Ljava/math/BigInteger;
    .restart local v3       #subjectDN:[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
