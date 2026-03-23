.class Lcom/roblox/client/pushnotification/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/roblox/client/pushnotification/l$a;)V
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
.field final synthetic a:Lcom/roblox/client/pushnotification/l$a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/roblox/client/pushnotification/a/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/a/a;Lcom/roblox/client/pushnotification/l$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/roblox/client/pushnotification/a/a$1;->c:Lcom/roblox/client/pushnotification/a/a;

    iput-object p2, p0, Lcom/roblox/client/pushnotification/a/a$1;->a:Lcom/roblox/client/pushnotification/l$a;

    iput-object p3, p0, Lcom/roblox/client/pushnotification/a/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 5
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
    .line 53
    invoke-virtual {p2}, Ld/l;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 55
    :try_start_0
    invoke-static {p2}, Lcom/roblox/client/util/l;->a(Ld/l;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/roblox/client/pushnotification/a/a$1;->c:Lcom/roblox/client/pushnotification/a/a;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/a/a$1;->a:Lcom/roblox/client/pushnotification/l$a;

    new-instance v3, Lcom/roblox/client/pushnotification/b/n;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/roblox/client/pushnotification/b/n;-><init>(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/roblox/client/pushnotification/a/a$1;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v0}, Lcom/roblox/client/pushnotification/a/a;->a(Lcom/roblox/client/pushnotification/l$a;Lcom/roblox/client/pushnotification/b/n;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/t;

    const-string v2, "PushNotificationRegistrationFailed"

    invoke-direct {v1, v2}, Lcom/roblox/client/e/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/t;

    const-string v2, "PushNotificationRegistrationFailed"

    invoke-direct {v1, v2}, Lcom/roblox/client/e/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

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
    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/t;

    const-string v2, "PushNotificationRegistrationFailed"

    invoke-direct {v1, v2}, Lcom/roblox/client/e/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
