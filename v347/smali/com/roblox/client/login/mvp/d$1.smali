.class Lcom/roblox/client/login/mvp/d$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/d$a;

.field final synthetic b:Lcom/roblox/client/login/mvp/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 7

    .prologue
    const/16 v5, -0x7da

    const/4 v1, 0x0

    .line 125
    .line 127
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    .line 128
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/d;->f()V

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 142
    :goto_0
    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-static {v0, v1}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d;Lorg/json/JSONObject;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    const-string v3, "twoStepVerificationData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    iget-object v3, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d;Lorg/json/JSONObject;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    .line 225
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 226
    iput v2, v0, Lcom/roblox/client/login/mvp/c;->d:I

    .line 227
    iget-object v1, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-interface {v1, v0}, Lcom/roblox/client/login/mvp/d$a;->a(Lcom/roblox/client/login/mvp/c;)V

    .line 229
    :cond_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v0, "rbx.authlogin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callLoginWithAuthV1. Error parsing server response on 200. msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v3, "FailureJSON"

    const-string v4, "Android-AppLogin-Failure-UnknownError"

    invoke-direct {v0, v3, v4, v5}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v1, "rbx.authlogin"

    const-string v3, "callLoginWithAuthV1(). errorCode=200."

    invoke-static {v1, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v1}, Lcom/roblox/client/login/mvp/d;->e()V

    .line 152
    iget-object v1, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/d$a;->a()V

    goto :goto_1

    .line 159
    :cond_3
    :try_start_1
    new-instance v0, Lcom/roblox/client/login/mvp/d$b;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/roblox/client/login/mvp/d$b;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_2
    sparse-switch v2, :sswitch_data_0

    .line 215
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v1, "FailureUnknownError"

    const-string v3, "Android-AppLogin-Failure-UnknownError"

    invoke-direct {v0, v1, v3, v5}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    .line 163
    const-string v0, "rbx.authlogin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing server error message. msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_2

    .line 168
    :sswitch_0
    iget-object v1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-static {v1, v0}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    goto :goto_1

    .line 171
    :sswitch_1
    iget-object v1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    iget-object v3, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-static {v1, v0, v3}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    goto/16 :goto_1

    .line 175
    :sswitch_2
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/d;->f()V

    .line 177
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/d$a;->d()V

    .line 179
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v1, "FailureLoginFloodcheck"

    const-string v3, "Android-AppLogin-Failure-429-Throttled"

    const/16 v4, -0x7e6

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 188
    :sswitch_3
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v1, "FailureUnknownError"

    const-string v3, "Android-AppLogin-Failure-0-Timeout"

    const/16 v4, -0x7e2

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 197
    :sswitch_4
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v1, "FailureUnknownError"

    const-string v3, "Android-AppLogin-Failure-404-NotFound"

    const/16 v4, -0x7e3

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 206
    :sswitch_5
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v1, "FailureUnknownError"

    const-string v3, "Android-AppLogin-Failure-500-InternalServerError"

    const/16 v4, -0x7e4

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x190 -> :sswitch_0
        0x193 -> :sswitch_1
        0x194 -> :sswitch_4
        0x1ad -> :sswitch_2
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method
