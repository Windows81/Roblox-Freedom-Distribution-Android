.class Lcom/roblox/client/s/h$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/h;->a(Lcom/roblox/client/s/h$a;Lcom/roblox/client/http/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/s/h$a;

.field final synthetic b:Lcom/roblox/client/s/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/h;Lcom/roblox/client/s/h$a;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/roblox/client/s/h$1;->b:Lcom/roblox/client/s/h;

    iput-object p2, p0, Lcom/roblox/client/s/h$1;->a:Lcom/roblox/client/s/h$a;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .line 100
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->j()I

    move-result v1

    .line 107
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 109
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "robux"

    .line 110
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/roblox/client/ad/c;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/s/h$1;->a:Lcom/roblox/client/s/h$a;

    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p1, v3, v1}, Lcom/roblox/client/s/h$a;->a(ZI)V

    :cond_1
    return-void
.end method
