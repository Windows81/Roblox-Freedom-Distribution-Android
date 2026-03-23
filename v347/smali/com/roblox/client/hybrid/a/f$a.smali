.class Lcom/roblox/client/hybrid/a/f$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/f;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/f;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/f$a;->a:Lcom/roblox/client/hybrid/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/f;Lcom/roblox/client/hybrid/a/f$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/f$a;-><init>(Lcom/roblox/client/hybrid/a/f;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "Settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "SETTINGS_TAG"

    .line 81
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const-string v0, "Friends"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "FRIENDS_TAG"

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "Games"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "GAMES_TAG"

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "Home"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    const-string v0, "HOME_TAG"

    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "Messages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    const-string v0, "MESSAGES_TAG"

    goto :goto_0

    .line 71
    :cond_4
    const-string v0, "Avatar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    const-string v0, "AVATAR_EDITOR_TAG"

    goto :goto_0

    .line 74
    :cond_5
    const-string v0, "Abuse Report"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    const-string v0, "ABUSE_REPORT_TAG"

    goto :goto_0

    .line 77
    :cond_6
    const-string v0, "Friend Finder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    const-string v0, "FRIEND_FINDER_TAG"

    goto :goto_0

    .line 81
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 29
    .line 31
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    const-string v2, "params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string v3, "urlPath"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    const-string v3, "Navigation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_0

    .line 44
    invoke-direct {p0, v2}, Lcom/roblox/client/hybrid/a/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    new-instance v3, Lcom/roblox/client/e/q;

    invoke-direct {v3, v2}, Lcom/roblox/client/e/q;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3, v0}, Lcom/roblox/client/e/q;->a(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    .line 53
    return-void

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method
