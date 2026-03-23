.class Lcom/roblox/client/p/b$2;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/p/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/p/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/p/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/p/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/p/b;Lcom/roblox/client/p/b$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/roblox/client/p/b$2;->c:Lcom/roblox/client/p/b;

    iput-object p2, p0, Lcom/roblox/client/p/b$2;->a:Lcom/roblox/client/p/b$a;

    iput-object p3, p0, Lcom/roblox/client/p/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v0, -0x3e8

    .line 178
    .line 180
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v3

    .line 182
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_2

    .line 183
    const-string v2, "rbx.2sv"

    const-string v3, "callResend2SVCode. 2SV code resent."

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    const-string v3, "tl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    const-string v4, "mediaType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v4, p0, Lcom/roblox/client/p/b$2;->a:Lcom/roblox/client/p/b$a;

    invoke-interface {v4, v3, v2}, Lcom/roblox/client/p/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 265
    const-string v2, "rbx.2sv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callResend2SVCode. code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/roblox/client/p/b$2;->c:Lcom/roblox/client/p/b;

    invoke-static {v2}, Lcom/roblox/client/p/b;->a(Lcom/roblox/client/p/b;)Lcom/roblox/client/i/f;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/p/b$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, p1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V

    .line 270
    iget-object v1, p0, Lcom/roblox/client/p/b$2;->a:Lcom/roblox/client/p/b$a;

    invoke-interface {v1, v0}, Lcom/roblox/client/p/b$a;->a(I)V

    .line 272
    :cond_1
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    const-string v1, "rbx.2sv"

    const-string v2, "callResend2SVCode. Error parsing json response."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v1, "FailureJSON"

    goto :goto_0

    .line 204
    :cond_2
    :try_start_1
    new-instance v2, Lcom/roblox/client/p/b$b;

    .line 205
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/roblox/client/p/b$b;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_1
    if-eqz v2, :cond_0

    .line 212
    sparse-switch v3, :sswitch_data_0

    .line 258
    const-string v1, "FailureUnknownError"

    goto :goto_0

    .line 206
    :catch_1
    move-exception v2

    .line 208
    const-string v2, "FailureJSON"

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_1

    .line 214
    :sswitch_0
    iget v1, v2, Lcom/roblox/client/p/b$b;->a:I

    .line 216
    packed-switch v1, :pswitch_data_0

    .line 239
    :pswitch_0
    const-string v1, "FailureUnknownError"

    goto :goto_0

    .line 219
    :pswitch_1
    const/16 v0, -0x3e9

    .line 220
    const-string v1, "Failure2SVUserNotFound"

    goto :goto_0

    .line 225
    :pswitch_2
    const/16 v0, -0x3ea

    .line 226
    const-string v1, "Failure2SVDisabled"

    goto :goto_0

    .line 234
    :pswitch_3
    const/16 v0, -0x3eb

    .line 235
    const-string v1, "Failure2SVCredentialsCheck"

    goto :goto_0

    .line 246
    :sswitch_1
    const/16 v0, -0x3ec

    .line 247
    const-string v1, "Failure2SVDisabled"

    goto :goto_0

    .line 251
    :sswitch_2
    const/16 v0, -0x3ed

    .line 252
    const-string v1, "Failure2SVFloodCheck"

    goto :goto_0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x1ad -> :sswitch_2
    .end sparse-switch

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
