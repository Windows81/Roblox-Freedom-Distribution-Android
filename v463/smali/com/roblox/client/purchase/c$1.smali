.class Lcom/roblox/client/purchase/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/purchase/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/c$b;

.field final synthetic b:Lcom/roblox/client/purchase/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/c;Lcom/roblox/client/purchase/c$b;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    iput-object p2, p0, Lcom/roblox/client/purchase/c$1;->a:Lcom/roblox/client/purchase/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .line 59
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.purchaseflow"

    if-eqz v0, :cond_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response Str "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result p1

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_a

    const/16 v2, 0x1ad

    if-eq p1, v2, :cond_7

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x190

    if-eq p1, v0, :cond_4

    const/16 v0, 0x191

    if-eq p1, v0, :cond_3

    const/16 v0, 0x193

    if-eq p1, v0, :cond_2

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const-string p1, "Validation unknown error"

    .line 122
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object p1, Lcom/roblox/client/purchase/c$a;->g:Lcom/roblox/client/purchase/c$a;

    .line 124
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->o()V

    goto/16 :goto_0

    :cond_1
    const-string p1, "{validateModel} is invalid."

    .line 87
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object p1, Lcom/roblox/client/purchase/c$a;->b:Lcom/roblox/client/purchase/c$a;

    .line 89
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->k()V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Unauthorized to make request. XSRF token is needed."

    .line 82
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object p1, Lcom/roblox/client/purchase/c$a;->b:Lcom/roblox/client/purchase/c$a;

    .line 84
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->j()V

    goto/16 :goto_0

    :cond_3
    const-string p1, "Unauthorized to make request. Auth cookie is needed."

    .line 77
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object p1, Lcom/roblox/client/purchase/c$a;->b:Lcom/roblox/client/purchase/c$a;

    .line 79
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->i()V

    goto/16 :goto_0

    :cond_4
    const-string p1, "Service has thrown an uknown exception."

    .line 72
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object p1, Lcom/roblox/client/purchase/c$a;->g:Lcom/roblox/client/purchase/c$a;

    .line 74
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->h()V

    goto :goto_0

    :cond_5
    const-string p1, "Service has been turned off. Header response will include Retry-After in seconds."

    .line 117
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object p1, Lcom/roblox/client/purchase/c$a;->c:Lcom/roblox/client/purchase/c$a;

    .line 119
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->n()V

    goto :goto_0

    :cond_6
    const-string p1, "Server Error"

    .line 112
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object p1, Lcom/roblox/client/purchase/c$a;->g:Lcom/roblox/client/purchase/c$a;

    .line 114
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->m()V

    goto :goto_0

    :cond_7
    const-string p1, "Service has been rate limited to user."

    .line 92
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {p1}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/f;->l()V

    .line 95
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/m/e;->cS()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 97
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errors"

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "code"

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_8

    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 102
    :cond_8
    sget-object p1, Lcom/roblox/client/purchase/c$a;->e:Lcom/roblox/client/purchase/c$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    :cond_9
    sget-object p1, Lcom/roblox/client/purchase/c$a;->d:Lcom/roblox/client/purchase/c$a;

    goto :goto_0

    :cond_a
    const-string p1, "Validation successful"

    .line 67
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object p1, Lcom/roblox/client/purchase/c$a;->a:Lcom/roblox/client/purchase/c$a;

    .line 69
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->b:Lcom/roblox/client/purchase/c;

    invoke-static {v0}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/c;)Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->g()V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/purchase/c$1;->a:Lcom/roblox/client/purchase/c$b;

    if-eqz v0, :cond_b

    .line 129
    invoke-interface {v0, p1}, Lcom/roblox/client/purchase/c$b;->a(Lcom/roblox/client/purchase/c$a;)V

    :cond_b
    return-void
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    return-void
.end method
