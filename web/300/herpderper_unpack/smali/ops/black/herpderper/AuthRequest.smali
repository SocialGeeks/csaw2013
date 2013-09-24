.class public Lops/black/herpderper/AuthRequest;
.super Landroid/os/AsyncTask;
.source "AuthRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public delegate:Lops/black/herpderper/AsyncResponse;

.field protected jobStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lops/black/herpderper/AuthRequest;->delegate:Lops/black/herpderper/AsyncResponse;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lops/black/herpderper/AuthRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "uri"

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 29
    const/16 v14, 0x539

    div-int/lit8 v14, v14, 0x0

    .line 31
    :cond_0
    const/4 v11, 0x0

    .line 34
    .local v11, url:Ljava/net/URL;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v11           #url:Ljava/net/URL;
    .local v12, url:Ljava/net/URL;
    move-object v11, v12

    .line 41
    .end local v12           #url:Ljava/net/URL;
    .restart local v11       #url:Ljava/net/URL;
    :goto_0
    const/4 v13, 0x0

    .line 44
    .local v13, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v13, v0

    .line 47
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 48
    const-string v14, "POST"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    invoke-static {v13}, Lops/black/herpderper/TrustModifier;->relaxHostChecking(Ljava/net/HttpURLConnection;)V

    .line 52
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 55
    .local v5, out:Ljava/io/OutputStream;
    const/4 v14, 0x1

    aget-object v14, p1, v14

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, identity:Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, p1, v14

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, secret:Ljava/lang/String;
    const-string v14, "\n"

    const-string v15, ""

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\r"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const-string v14, "\n"

    const-string v15, ""

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\r"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 60
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "identity="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&secret="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&integrityid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, toSend:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/io/OutputStream;->write([B)V

    .line 62
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 64
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 70
    .end local v2           #identity:Ljava/lang/String;
    .end local v5           #out:Ljava/io/OutputStream;
    .end local v8           #secret:Ljava/lang/String;
    .end local v9           #toSend:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lops/black/herpderper/AuthRequest;->jobStatus:Ljava/lang/String;

    .line 73
    .local v7, responseString:Ljava/lang/String;
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 74
    .local v3, in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v6, r:Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v10, total:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 86
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #r:Ljava/io/BufferedReader;
    .end local v10           #total:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v14

    .line 92
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 94
    .end local v7           #responseString:Ljava/lang/String;
    :goto_3
    return-object v7

    .line 36
    .end local v13           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 38
    .local v1, e1:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 65
    .end local v1           #e1:Ljava/net/MalformedURLException;
    .restart local v13       #urlConnection:Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v1

    .line 66
    .local v1, e1:Ljava/lang/Exception;
    const-string v14, "error"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 84
    .end local v1           #e1:Ljava/lang/Exception;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #r:Ljava/io/BufferedReader;
    .restart local v7       #responseString:Ljava/lang/String;
    .restart local v10       #total:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 92
    .end local v7           #responseString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 88
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #r:Ljava/io/BufferedReader;
    .end local v10           #total:Ljava/lang/StringBuilder;
    .restart local v7       #responseString:Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 92
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catchall_0
    move-exception v14

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lops/black/herpderper/AuthRequest;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lops/black/herpderper/AuthRequest;->delegate:Lops/black/herpderper/AsyncResponse;

    invoke-interface {v0, p1}, Lops/black/herpderper/AsyncResponse;->processFinish(Ljava/lang/String;)V

    .line 106
    return-void
.end method
