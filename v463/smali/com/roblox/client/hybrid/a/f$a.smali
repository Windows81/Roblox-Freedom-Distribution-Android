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

    .line 27
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/f$a;->a:Lcom/roblox/client/hybrid/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/f;Lcom/roblox/client/hybrid/a/f$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/f$a;-><init>(Lcom/roblox/client/hybrid/a/f;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Settings"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SETTINGS_TAG"

    return-object p1

    :cond_0
    const-string v0, "Friends"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "FRIENDS_TAG"

    return-object p1

    :cond_1
    const-string v0, "Games"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "GAMES_TAG"

    return-object p1

    :cond_2
    const-string v0, "Home"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "HOME_TAG"

    return-object p1

    :cond_3
    const-string v0, "Messages"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "MESSAGES_TAG"

    return-object p1

    :cond_4
    const-string v0, "Avatar"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "AVATAR_EDITOR_TAG"

    return-object p1

    :cond_5
    const-string v0, "Abuse Report"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "ABUSE_REPORT_TAG"

    return-object p1

    :cond_6
    const-string v0, "Friend Finder"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "FRIEND_FINDER_TAG"

    return-object p1

    :cond_7
    const-string v0, "Universal Friends"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "UNIVERSAL_FRIENDS_TAG"

    return-object p1

    :cond_8
    const-string v0, "GameDetails"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 89
    invoke-static {}, Lcom/roblox/client/b;->bG()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "GAME_DETAILS_TAG"

    return-object p1

    :cond_9
    return-object v1

    :cond_a
    const-string v0, "Nearby Friends"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "NEARBY_TAG"

    return-object p1

    :cond_b
    const-string v0, "CaptchaSuccess"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "CAPTCHA_SUCCESS_TAG"

    return-object p1

    :cond_c
    const-string v0, "CaptchaShown"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "CAPTCHA_SHOWN_TAG"

    return-object p1

    :cond_d
    return-object v1
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 6

    .line 33
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "params"

    .line 35
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "feature"

    .line 37
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "urlPath"

    .line 38
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v2, v0

    :goto_0
    move-object v3, v2

    .line 41
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Navigation"

    invoke-static {v5, v4}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 46
    invoke-direct {p0, v2}, Lcom/roblox/client/hybrid/a/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 48
    new-instance v4, Lcom/roblox/client/l/j;

    invoke-direct {v4, v2}, Lcom/roblox/client/l/j;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4, v3}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v4, v0}, Lcom/roblox/client/l/j;->a(Lorg/json/JSONObject;)V

    .line 53
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 57
    :cond_3
    invoke-virtual {p1, v4, v1}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    return-void
.end method
