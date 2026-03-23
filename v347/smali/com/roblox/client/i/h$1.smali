.class Lcom/roblox/client/i/h$1;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h$a;Lcom/roblox/client/http/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/h$a;

.field final synthetic b:Lcom/roblox/client/i/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$a;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/roblox/client/i/h$1;->b:Lcom/roblox/client/i/h;

    iput-object p2, p0, Lcom/roblox/client/i/h$1;->a:Lcom/roblox/client/i/h$a;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 5

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/roblox/client/q/d;->j()I

    move-result v0

    .line 119
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v4, "robux"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-virtual {v2, v0}, Lcom/roblox/client/q/d;->d(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v1, 0x1

    .line 129
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/i/h$1;->a:Lcom/roblox/client/i/h$a;

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/roblox/client/i/h$1;->a:Lcom/roblox/client/i/h$a;

    invoke-interface {v2, v1, v0}, Lcom/roblox/client/i/h$a;->a(ZI)V

    .line 132
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v2

    .line 126
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
