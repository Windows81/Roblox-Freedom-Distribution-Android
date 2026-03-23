.class Lcom/roblox/client/pushnotification/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;


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
        "Ld/d",
        "<",
        "Lb/ac;",
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

    .prologue
    .line 83
    iput-object p1, p0, Lcom/roblox/client/pushnotification/a/a$2;->e:Lcom/roblox/client/pushnotification/a/a;

    iput-object p2, p0, Lcom/roblox/client/pushnotification/a/a$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/roblox/client/pushnotification/a/a$2;->d:Lcom/roblox/client/pushnotification/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ld/l",
            "<",
            "Lb/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p2}, Ld/l;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 88
    :try_start_0
    invoke-static {p2}, Lcom/roblox/client/util/l;->a(Ld/l;)Ljava/lang/String;

    move-result-object v6

    .line 89
    const-string v0, "rbx.push"

    invoke-static {v0, v6}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a/a$2;->e:Lcom/roblox/client/pushnotification/a/a;

    iget-object v1, p0, Lcom/roblox/client/pushnotification/a/a$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/roblox/client/pushnotification/a/a$2;->d:Lcom/roblox/client/pushnotification/r$a;

    new-instance v5, Lcom/roblox/client/pushnotification/b/j;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/roblox/client/pushnotification/b/j;-><init>(Lorg/json/JSONObject;)V

    new-instance v6, Lcom/roblox/client/pushnotification/j;

    invoke-direct {v6}, Lcom/roblox/client/pushnotification/j;-><init>()V

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;Lcom/roblox/client/pushnotification/b/j;Lcom/roblox/client/pushnotification/j;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    const-string v1, "rbx.push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RGLS.onMessageReceived() JSONException msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "metadataInaccessible"

    iget-object v1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2}, Ld/l;->a()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 102
    const-string v0, "unauthenticated"

    iget-object v1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "metadataInaccessible"

    iget-object v1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ld/b;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "metadataInaccessible"

    iget-object v1, p0, Lcom/roblox/client/pushnotification/a/a$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/a/a$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
