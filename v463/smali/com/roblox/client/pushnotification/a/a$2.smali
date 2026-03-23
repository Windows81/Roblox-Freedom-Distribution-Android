.class Lcom/roblox/client/pushnotification/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/d<",
        "Lc/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/roblox/client/pushnotification/r$a;

.field final synthetic e:Lcom/roblox/client/pushnotification/a/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/a/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/roblox/client/pushnotification/a/a$2;->e:Lcom/roblox/client/pushnotification/a/a;

    iput-object p2, p0, Lcom/roblox/client/pushnotification/a/a$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/roblox/client/pushnotification/a/a$2;->d:Lcom/roblox/client/pushnotification/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Le/l<",
            "Lc/ad;",
            ">;)V"
        }
    .end annotation

    const-string p1, "rbx.push"

    .line 89
    invoke-virtual {p2}, Le/l;->a()I

    move-result v0

    const-string v1, "metadataInaccessible"

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 91
    :try_start_0
    invoke-static {p2}, Lcom/roblox/client/ae/p;->a(Le/l;)Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/roblox/client/pushnotification/a/a$2;->e:Lcom/roblox/client/pushnotification/a/a;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/a/a$2;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/roblox/client/pushnotification/a/a$2;->d:Lcom/roblox/client/pushnotification/r$a;

    new-instance v7, Lcom/roblox/client/pushnotification/b/j;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Lcom/roblox/client/pushnotification/b/j;-><init>(Lorg/json/JSONObject;)V

    new-instance v8, Lcom/roblox/client/pushnotification/j;

    invoke-direct {v8}, Lcom/roblox/client/pushnotification/j;-><init>()V

    invoke-virtual/range {v2 .. v8}, Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;Lcom/roblox/client/pushnotification/b/j;Lcom/roblox/client/pushnotification/j;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 97
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RGLS.onMessageReceived() JSONException msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Le/l;->a()I

    move-result p1

    const/16 p2, 0x191

    if-ne p1, p2, :cond_1

    .line 105
    iget-object p1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    const-string v0, "unauthenticated"

    invoke-static {v0, p1, p2}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 114
    iget-object p1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    const-string v0, "metadataInaccessible"

    invoke-static {v0, p1, p2}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
