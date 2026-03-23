.class Lcom/roblox/client/hybrid/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/f;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/f;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/f$b;->a:Lcom/roblox/client/hybrid/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/f;Lcom/roblox/client/hybrid/a/f$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/f$b;-><init>(Lcom/roblox/client/hybrid/a/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 4

    .line 113
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, -0x1

    const-string v3, "userId"

    .line 115
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 116
    new-instance v2, Lcom/roblox/client/l/j;

    const-string v3, "PROFILE_TAG"

    invoke-direct {v2, v3}, Lcom/roblox/client/l/j;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v0, v1}, Lcom/roblox/client/l/j;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
