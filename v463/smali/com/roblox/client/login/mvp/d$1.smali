.class Lcom/roblox/client/login/mvp/d$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/d$a;)V
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

    .line 124
    iput-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 7

    .line 129
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, -0x7da

    const-string v2, "Android-AppLogin-Failure-UnknownError"

    const-string v3, "rbx.authlogin"

    const/4 v4, 0x0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_1

    .line 131
    iget-object v5, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {v5}, Lcom/roblox/client/login/mvp/d;->e()V

    .line 134
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callLoginWithAuthV1. Error parsing server response on 200. msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p1, Lcom/roblox/client/login/mvp/c;

    const-string v5, "FailureJSON"

    invoke-direct {p1, v5, v2, v1}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, p1

    :goto_0
    if-nez v4, :cond_8

    .line 145
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {p1, v5}, Lcom/roblox/client/login/mvp/d;->a(Lorg/json/JSONObject;)Lcom/roblox/client/login/mvp/c;

    move-result-object v4

    if-nez v4, :cond_8

    const-string p1, "twoStepVerificationData"

    .line 147
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-virtual {p1, v5, v1}, Lcom/roblox/client/login/mvp/d;->a(Lorg/json/JSONObject;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;

    move-result-object v4

    goto/16 :goto_2

    :cond_0
    const-string p1, "callLoginWithAuthV1(). errorCode=200."

    .line 152
    invoke-static {v3, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/d;->d()V

    .line 154
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/d$a;->a()V

    goto/16 :goto_2

    .line 161
    :cond_1
    :try_start_1
    new-instance v5, Lcom/roblox/client/login/mvp/d$b;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/roblox/client/login/mvp/d$b;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    goto :goto_1

    .line 165
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing server error message. msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p1, "FailureUnknownError"

    if-eqz v0, :cond_7

    const/16 v3, 0x190

    if-eq v0, v3, :cond_6

    const/16 v3, 0x1ad

    if-eq v0, v3, :cond_5

    const/16 v3, 0x1f4

    if-eq v0, v3, :cond_4

    const/16 v3, 0x193

    if-eq v0, v3, :cond_3

    const/16 v3, 0x194

    if-eq v0, v3, :cond_2

    .line 217
    new-instance v4, Lcom/roblox/client/login/mvp/c;

    invoke-direct {v4, p1, v2, v1}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 199
    :cond_2
    new-instance v4, Lcom/roblox/client/login/mvp/c;

    const/16 v1, -0x7e3

    const-string v2, "Android-AppLogin-Failure-404-NotFound"

    invoke-direct {v4, p1, v2, v1}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-static {p1, v4, v1}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;

    move-result-object v4

    goto :goto_2

    .line 208
    :cond_4
    new-instance v4, Lcom/roblox/client/login/mvp/c;

    const/16 v1, -0x7e4

    const-string v2, "Android-AppLogin-Failure-500-InternalServerError"

    invoke-direct {v4, p1, v2, v1}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/d;->e()V

    .line 179
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/d$a;->d()V

    .line 181
    new-instance v4, Lcom/roblox/client/login/mvp/c;

    const/16 p1, -0x7e6

    const-string v1, "FailureLoginFloodcheck"

    const-string v2, "Android-AppLogin-Failure-429-Throttled"

    invoke-direct {v4, v1, v2, p1}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 170
    :cond_6
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->b:Lcom/roblox/client/login/mvp/d;

    invoke-static {p1, v4}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;

    move-result-object v4

    goto :goto_2

    .line 190
    :cond_7
    new-instance v4, Lcom/roblox/client/login/mvp/c;

    const/16 v1, -0x7e2

    const-string v2, "Android-AppLogin-Failure-0-Timeout"

    invoke-direct {v4, p1, v2, v1}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    .line 228
    iput v0, v4, Lcom/roblox/client/login/mvp/c;->d:I

    .line 229
    iget-object p1, p0, Lcom/roblox/client/login/mvp/d$1;->a:Lcom/roblox/client/login/mvp/d$a;

    invoke-interface {p1, v4}, Lcom/roblox/client/login/mvp/d$a;->a(Lcom/roblox/client/login/mvp/c;)V

    :cond_9
    return-void
.end method
