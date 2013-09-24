.class public Lorg/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 77
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :sswitch_0
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 85
    :sswitch_1
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :sswitch_2
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    :sswitch_3
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :sswitch_4
    const-string v4, "&apos;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 100
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x27 -> :sswitch_4
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 5
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    .local v1, length:I
    if-nez v1, :cond_0

    .line 112
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Empty string."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' contains a space character."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method

.method private static parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 11
    .parameter "x"
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x5b

    const/16 v9, 0x2d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    const/4 v2, 0x0

    .line 149
    .local v2, jsonobject:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 153
    .local v5, token:Ljava/lang/Object;
    sget-object v8, Lorg/json/XML;->BANG:Ljava/lang/Character;

    if-ne v5, v8, :cond_9

    .line 154
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v0

    .line 155
    .local v0, c:C
    if-ne v0, v9, :cond_4

    .line 156
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v7

    if-ne v7, v9, :cond_1

    .line 157
    const-string v7, "-->"

    invoke-virtual {p0, v7}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    .line 282
    .end local v0           #c:C
    .end local v5           #token:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 160
    .restart local v0       #c:C
    .restart local v5       #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lorg/json/XMLTokener;->back()V

    .line 174
    :cond_2
    const/4 v1, 0x1

    .line 176
    .local v1, i:I
    :cond_3
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v5

    .line 177
    if-nez v5, :cond_6

    .line 178
    const-string v6, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    .line 161
    .end local v1           #i:I
    :cond_4
    if-ne v0, v10, :cond_2

    .line 162
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 163
    const-string v7, "CDATA"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 164
    invoke-virtual {p0}, Lorg/json/XMLTokener;->next()C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 165
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 167
    const-string v7, "content"

    invoke-virtual {p1, v7, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 172
    .end local v3           #string:Ljava/lang/String;
    :cond_5
    const-string v6, "Expected \'CDATA[\'"

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    .line 179
    .restart local v1       #i:I
    :cond_6
    sget-object v7, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v5, v7, :cond_8

    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 184
    :cond_7
    :goto_1
    if-gtz v1, :cond_3

    goto :goto_0

    .line 181
    :cond_8
    sget-object v7, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v5, v7, :cond_7

    .line 182
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 186
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_9
    sget-object v8, Lorg/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v5, v8, :cond_a

    .line 190
    const-string v7, "?>"

    invoke-virtual {p0, v7}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto :goto_0

    .line 192
    :cond_a
    sget-object v8, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v5, v8, :cond_e

    .line 196
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 197
    if-nez p2, :cond_b

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mismatched close tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    .line 200
    :cond_b
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mismatched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    .line 203
    :cond_c
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v6, v8, :cond_d

    .line 204
    const-string v6, "Misshaped close tag"

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    :cond_d
    move v6, v7

    .line 206
    goto/16 :goto_0

    .line 208
    :cond_e
    instance-of v8, v5, Ljava/lang/Character;

    if-eqz v8, :cond_f

    .line 209
    const-string v6, "Misshaped tag"

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    :cond_f
    move-object v4, v5

    .line 214
    check-cast v4, Ljava/lang/String;

    .line 215
    .local v4, tagName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 216
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #jsonobject:Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .end local v5           #token:Ljava/lang/Object;
    .restart local v2       #jsonobject:Lorg/json/JSONObject;
    :goto_2
    if-nez v5, :cond_1c

    .line 219
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #token:Ljava/lang/Object;
    move-object v3, v5

    .line 224
    .end local v5           #token:Ljava/lang/Object;
    :goto_3
    instance-of v8, v3, Ljava/lang/String;

    if-eqz v8, :cond_12

    .line 225
    check-cast v3, Ljava/lang/String;

    .line 226
    .restart local v3       #string:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 227
    .restart local v5       #token:Ljava/lang/Object;
    sget-object v8, Lorg/json/XML;->EQ:Ljava/lang/Character;

    if-ne v5, v8, :cond_11

    .line 228
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v5

    .line 229
    instance-of v8, v5, Ljava/lang/String;

    if-nez v8, :cond_10

    .line 230
    const-string v6, "Missing value"

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    .line 232
    :cond_10
    check-cast v5, Ljava/lang/String;

    .end local v5           #token:Ljava/lang/Object;
    invoke-static {v5}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const/4 v5, 0x0

    .restart local v5       #token:Ljava/lang/Object;
    goto :goto_2

    .line 236
    :cond_11
    const-string v8, ""

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 241
    .end local v3           #string:Ljava/lang/String;
    .end local v5           #token:Ljava/lang/Object;
    :cond_12
    sget-object v8, Lorg/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v3, v8, :cond_15

    .line 242
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-eq v7, v8, :cond_13

    .line 243
    const-string v6, "Misshaped tag"

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    .line 245
    :cond_13
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 246
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 248
    :cond_14
    const-string v7, ""

    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 254
    :cond_15
    sget-object v8, Lorg/json/XML;->GT:Ljava/lang/Character;

    if-ne v3, v8, :cond_1b

    .line 256
    :cond_16
    :goto_4
    invoke-virtual {p0}, Lorg/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v5

    .line 257
    .restart local v5       #token:Ljava/lang/Object;
    if-nez v5, :cond_17

    .line 258
    if-eqz v4, :cond_0

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unclosed tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    .line 262
    :cond_17
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_18

    move-object v3, v5

    .line 263
    check-cast v3, Ljava/lang/String;

    .line 264
    .restart local v3       #string:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_16

    .line 265
    const-string v8, "content"

    invoke-static {v3}, Lorg/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 271
    .end local v3           #string:Ljava/lang/String;
    :cond_18
    sget-object v8, Lorg/json/XML;->LT:Ljava/lang/Character;

    if-ne v5, v8, :cond_16

    .line 272
    invoke-static {p0, v2, v4}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 273
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-nez v8, :cond_19

    .line 274
    const-string v7, ""

    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 275
    :cond_19
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-ne v8, v7, :cond_1a

    const-string v7, "content"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 277
    const-string v7, "content"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 280
    :cond_1a
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 287
    .end local v5           #token:Ljava/lang/Object;
    :cond_1b
    const-string v6, "Misshaped tag"

    invoke-virtual {p0, v6}, Lorg/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v6

    throw v6

    :cond_1c
    move-object v3, v5

    goto/16 :goto_3
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x30

    .line 304
    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 307
    .restart local p0
    :cond_1
    const-string v4, "true"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 310
    :cond_2
    const-string v4, "false"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 313
    :cond_3
    const-string v4, "null"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    .line 316
    :cond_4
    const-string v4, "0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 317
    new-instance p0, Ljava/lang/Integer;

    .end local p0
    invoke-direct {p0, v6}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 324
    .restart local p0
    :cond_5
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    .local v0, initial:C
    const/4 v2, 0x0

    .line 326
    .local v2, negative:Z
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_6

    .line 327
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 328
    const/4 v2, 0x1

    .line 330
    :cond_6
    if-ne v0, v5, :cond_8

    if-eqz v2, :cond_7

    const/4 v3, 0x2

    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_0

    .line 333
    :cond_8
    if-lt v0, v5, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 334
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_9

    .line 335
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 336
    :cond_9
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    const/16 v3, 0x45

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 337
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, myLong:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 339
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto/16 :goto_0

    :cond_a
    move-object p0, v1

    .line 341
    goto/16 :goto_0

    .line 345
    .end local v0           #initial:C
    .end local v1           #myLong:Ljava/lang/Long;
    .end local v2           #negative:Z
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 367
    .local v0, jo:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/XMLTokener;

    invoke-direct {v1, p0}, Lorg/json/XMLTokener;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, x:Lorg/json/XMLTokener;
    :goto_0
    invoke-virtual {v1}, Lorg/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v1, v2}, Lorg/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/json/XML;->parse(Lorg/json/XMLTokener;Lorg/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0

    .line 371
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "object"
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3c

    const/16 v11, 0x3e

    .line 395
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v7, sb:Ljava/lang/StringBuffer;
    instance-of v10, p0, Lorg/json/JSONObject;

    if-eqz v10, :cond_c

    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move-object v2, p0

    .line 416
    check-cast v2, Lorg/json/JSONObject;

    .line 417
    .local v2, jo:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 418
    .local v4, keys:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 419
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 421
    .local v9, value:Ljava/lang/Object;
    if-nez v9, :cond_2

    .line 422
    const-string v9, ""

    .line 424
    .end local v9           #value:Ljava/lang/Object;
    :cond_2
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v8, v9

    .line 425
    check-cast v8, Ljava/lang/String;

    .line 432
    .local v8, string:Ljava/lang/String;
    :goto_1
    const-string v10, "content"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 433
    instance-of v10, v9, Lorg/json/JSONArray;

    if-eqz v10, :cond_5

    move-object v1, v9

    .line 434
    check-cast v1, Lorg/json/JSONArray;

    .line 435
    .local v1, ja:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 436
    .local v5, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v5, :cond_1

    .line 437
    if-lez v0, :cond_3

    .line 438
    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    :cond_3
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 427
    .end local v0           #i:I
    .end local v1           #ja:Lorg/json/JSONArray;
    .end local v5           #length:I
    .end local v8           #string:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #string:Ljava/lang/String;
    goto :goto_1

    .line 443
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 448
    :cond_6
    instance-of v10, v9, Lorg/json/JSONArray;

    if-eqz v10, :cond_8

    move-object v1, v9

    .line 449
    check-cast v1, Lorg/json/JSONArray;

    .line 450
    .restart local v1       #ja:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 451
    .restart local v5       #length:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v5, :cond_1

    .line 452
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 453
    .restart local v9       #value:Ljava/lang/Object;
    instance-of v10, v9, Lorg/json/JSONArray;

    if-eqz v10, :cond_7

    .line 454
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    invoke-static {v9}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v10, "</"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 462
    :cond_7
    invoke-static {v9, v3}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 465
    .end local v0           #i:I
    .end local v1           #ja:Lorg/json/JSONArray;
    .end local v5           #length:I
    .end local v9           #value:Ljava/lang/Object;
    :cond_8
    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 466
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v10, "/>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 473
    :cond_9
    invoke-static {v9, v3}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 476
    .end local v3           #key:Ljava/lang/String;
    .end local v8           #string:Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_b

    .line 480
    const-string v10, "</"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 502
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v4           #keys:Ljava/util/Iterator;
    :goto_5
    return-object v10

    .line 490
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 491
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .local v6, object:Lorg/json/JSONArray;
    move-object p0, v6

    .line 493
    .end local v6           #object:Lorg/json/JSONArray;
    :cond_d
    instance-of v10, p0, Lorg/json/JSONArray;

    if-eqz v10, :cond_10

    move-object v1, p0

    .line 494
    check-cast v1, Lorg/json/JSONArray;

    .line 495
    .restart local v1       #ja:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 496
    .restart local v5       #length:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    if-ge v0, v5, :cond_f

    .line 497
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v11

    if-nez p1, :cond_e

    const-string v10, "array"

    :goto_7
    invoke-static {v11, v10}, Lorg/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    move-object v10, p1

    .line 497
    goto :goto_7

    .line 499
    :cond_f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 501
    .end local v0           #i:I
    .end local v1           #ja:Lorg/json/JSONArray;
    .end local v5           #length:I
    :cond_10
    if-nez p0, :cond_11

    const-string v8, "null"

    .line 502
    .restart local v8       #string:Ljava/lang/String;
    :goto_8
    if-nez p1, :cond_12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .line 501
    .end local v8           #string:Ljava/lang/String;
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 502
    .restart local v8       #string:Ljava/lang/String;
    :cond_12
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5
.end method
