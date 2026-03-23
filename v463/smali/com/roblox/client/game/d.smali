.class public Lcom/roblox/client/game/d;
.super Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/d$b;,
        Lcom/roblox/client/game/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/roblox/client/game/d$a;

.field private d:Lcom/roblox/client/game/d$b;

.field private e:Lcom/roblox/client/app/AppInputFocusLifecycleObserver;


# direct methods
.method public constructor <init>(Lcom/roblox/client/game/d$a;Lcom/roblox/client/game/d$b;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;-><init>()V

    const-string v0, "rbx.datamodel"

    .line 39
    iput-object v0, p0, Lcom/roblox/client/game/d;->a:Ljava/lang/String;

    const-string v0, "OPEN_YOUTUBE_VIDEO"

    .line 41
    iput-object v0, p0, Lcom/roblox/client/game/d;->b:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/roblox/client/app/AppInputFocusLifecycleObserver;

    invoke-direct {v0}, Lcom/roblox/client/app/AppInputFocusLifecycleObserver;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/game/d;->e:Lcom/roblox/client/app/AppInputFocusLifecycleObserver;

    .line 57
    iput-object p1, p0, Lcom/roblox/client/game/d;->c:Lcom/roblox/client/game/d$a;

    .line 58
    iput-object p2, p0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataModelNotification() type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rbx.datamodel"

    invoke-static {v4, v3}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VIEW_PROFILE"

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v1, "PROFILE_TAG"

    .line 70
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    const-string v3, "REPORT_ABUSE"

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    new-instance v1, Lcom/roblox/client/l/j;

    const-string v3, "ABUSE_REPORT_TAG"

    invoke-direct {v1, v3}, Lcom/roblox/client/l/j;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    const-string v3, "VIEW_GAME_DETAILS"

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "GAME_DETAILS_TAG"

    .line 84
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    const-string v3, "PRIVACY_SETTINGS"

    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "SETTINGS_TAG"

    .line 91
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/roblox/client/u;->U()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 94
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_4
    const-string v3, "BACK_BUTTON_NOT_CONSUMED"

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/l/c;

    invoke-direct {v2}, Lcom/roblox/client/l/c;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_5
    const-string v3, "PURCHASE_ROBUX"

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    new-instance v1, Lcom/roblox/client/t/e;

    iget-object v2, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v2}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v2

    const-string v3, "tabAvatar"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/t/e;-><init>(Lcom/roblox/client/s;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/roblox/client/game/d;->e:Lcom/roblox/client/app/AppInputFocusLifecycleObserver;

    invoke-virtual {v1, v2}, Lcom/roblox/client/t/e;->a(Landroidx/lifecycle/i;)V

    goto/16 :goto_9

    :cond_6
    const-string v3, "VIEW_NOTIFICATIONS"

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 107
    new-instance v1, Lcom/roblox/client/t/d;

    iget-object v2, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v2}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/roblox/client/t/d;-><init>(Landroidx/fragment/app/Fragment;)V

    iget-object v2, v0, Lcom/roblox/client/game/d;->e:Lcom/roblox/client/app/AppInputFocusLifecycleObserver;

    invoke-virtual {v1, v2}, Lcom/roblox/client/t/d;->a(Landroidx/lifecycle/i;)V

    goto/16 :goto_9

    :cond_7
    const-string v3, "APP_READY"

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 111
    iget-object v1, v0, Lcom/roblox/client/game/d;->c:Lcom/roblox/client/game/d$a;

    invoke-interface {v1, v2}, Lcom/roblox/client/game/d$a;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_8
    const-string v3, "CLOSE_MODAL"

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_9

    :cond_9
    const-string v3, "VIEW_GAME_DETAILS_ANIMATED"

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v1, "ANIMATED_ASSET_DETAILS_TAG"

    .line 118
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_a
    const-string v3, "OPEN_CUSTOM_WEBVIEW"

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "OPEN_SETTINGS_WEBVIEW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_8

    :cond_b
    const-string v3, "OPEN_BUILDERS_CLUB"

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 132
    new-instance v1, Lcom/roblox/client/t/b;

    iget-object v2, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v2}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v2

    const-string v3, "tabMore"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/t/b;-><init>(Lcom/roblox/client/s;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/roblox/client/game/d;->e:Lcom/roblox/client/app/AppInputFocusLifecycleObserver;

    invoke-virtual {v1, v2}, Lcom/roblox/client/t/b;->a(Landroidx/lifecycle/i;)V

    goto/16 :goto_9

    :cond_c
    const-string v3, "OPEN_SOCIAL_MEDIA"

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v1, "SOCIAL_MEDIA_TAG"

    .line 136
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->b(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_d
    const-string v3, "LAUNCH_GAME"

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 143
    invoke-static {}, Lcom/roblox/client/b;->bz()Z

    move-result v1

    const-string v3, "referralPage"

    const-string v5, "placeId"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_14

    .line 153
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Exception parsing data model notification for LAUNCH_GAME"

    .line 156
    invoke-static {v4, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_25

    .line 160
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v2, "userId"

    .line 161
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v2, "conversationId"

    .line 162
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v2, "gameInstanceId"

    .line 163
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    cmp-long v3, v4, v7

    if-lez v3, :cond_e

    cmp-long v3, v11, v7

    if-lez v3, :cond_e

    .line 169
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 170
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 168
    invoke-static {v2, v3, v1}, Lcom/roblox/client/game/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/roblox/client/game/h;

    move-result-object v6

    goto :goto_5

    :cond_e
    cmp-long v3, v4, v7

    if-gtz v3, :cond_f

    cmp-long v3, v9, v7

    if-lez v3, :cond_13

    :cond_f
    cmp-long v3, v4, v7

    if-nez v3, :cond_10

    move-object v13, v6

    goto :goto_2

    .line 176
    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v13, v3

    :goto_2
    cmp-long v3, v9, v7

    if-nez v3, :cond_11

    move-object v14, v6

    goto :goto_3

    .line 177
    :cond_11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v14, v3

    :goto_3
    const/4 v15, 0x0

    .line 179
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v16, v6

    goto :goto_4

    :cond_12
    move-object/from16 v16, v2

    :goto_4
    const/16 v17, 0x0

    move-object/from16 v18, v1

    .line 175
    invoke-static/range {v13 .. v18}, Lcom/roblox/client/game/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/roblox/client/game/h;

    move-result-object v6

    :cond_13
    :goto_5
    if-eqz v6, :cond_25

    .line 186
    iget-object v1, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v1}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1

    .line 187
    invoke-static {v6, v1}, Lcom/roblox/client/a;->a(Lcom/roblox/client/game/h;Landroid/app/Activity;)V

    .line 188
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/roblox/client/s/f;->a(Landroid/content/Context;)V

    goto/16 :goto_9

    .line 197
    :cond_14
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    :try_start_2
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_1
    move-wide v9, v7

    :catch_2
    const-string v1, "No placeId for data model notification LAUNCH_GAME"

    .line 202
    invoke-static {v4, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v16, v6

    cmp-long v1, v9, v7

    if-lez v1, :cond_25

    .line 205
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v16}, Lcom/roblox/client/game/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/roblox/client/game/h;

    move-result-object v1

    .line 206
    iget-object v2, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v2}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/a;->a(Lcom/roblox/client/game/h;Landroid/app/Activity;)V

    goto/16 :goto_9

    :cond_15
    const-string v3, "VIEW_MY_FEED"

    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v1, "MY_FEED_TAG"

    .line 212
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 214
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_16
    const-string v3, "SEARCH_GAMES"

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v1, "SEARCH_GAMES_TAG"

    .line 218
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 221
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_17
    const-string v3, "GAMES_SEE_ALL"

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v1, "GAMES_SEE_ALL_TAG"

    .line 225
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 226
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 228
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_18
    const-string v3, "ACTION_LOG_OUT"

    .line 230
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 231
    new-instance v1, Lcom/roblox/client/t/c;

    iget-object v2, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v2}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/roblox/client/t/c;-><init>(Lcom/roblox/client/s;)V

    iget-object v2, v0, Lcom/roblox/client/game/d;->e:Lcom/roblox/client/app/AppInputFocusLifecycleObserver;

    invoke-virtual {v1, v2}, Lcom/roblox/client/t/c;->a(Landroidx/lifecycle/i;)V

    goto/16 :goto_9

    :cond_19
    const-string v3, "LUA_HOME_PAGE_LOADED"

    .line 233
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 234
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/roblox/client/analytics/g;->c(Z)V

    const-string v1, "LuaHomePageLoaded"

    .line 235
    invoke-static {v1}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/roblox/client/analytics/i;->b()V

    goto/16 :goto_9

    :cond_1a
    const-string v3, "LAUNCH_CONVERSATION"

    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-wide/16 v5, -0x1

    .line 241
    :try_start_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    const-string v1, "could not parse data"

    .line 243
    invoke-static {v4, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, v5

    :goto_7
    cmp-long v3, v1, v5

    if-eqz v3, :cond_25

    .line 247
    new-instance v3, Lcom/roblox/client/l/i;

    invoke-direct {v3, v1, v2}, Lcom/roblox/client/l/i;-><init>(J)V

    .line 248
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1b
    const-string v3, "UNIVERSAL_FRIENDS"

    .line 251
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 252
    new-instance v1, Lcom/roblox/client/l/j;

    const-string v2, "UNIVERSAL_FRIENDS_TAG"

    invoke-direct {v1, v2}, Lcom/roblox/client/l/j;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1c
    const-string v3, "OPEN_YOUTUBE_VIDEO"

    .line 255
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v1, "YOUTUBE_TAG"

    .line 256
    invoke-static {v1, v2}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 258
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1d
    const-string v3, "ACTION_LOG_IN"

    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 261
    iget-object v1, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v1}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 263
    invoke-static {v1}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/startup/c;->e()V

    goto/16 :goto_9

    :cond_1e
    const-string v3, "DID_LOG_IN"

    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 267
    iget-object v1, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v1}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 269
    invoke-static {v1}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/roblox/client/startup/c;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1f
    const-string v3, "DID_SIGN_UP"

    .line 272
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 273
    iget-object v1, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v1}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 275
    invoke-static {v1}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/roblox/client/startup/c;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_20
    const-string v3, "DID_LOG_OUT"

    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 279
    iget-object v1, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v1}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 281
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/s/h;->d()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 282
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/s/c$e;->b:Lcom/roblox/client/s/c$e;

    invoke-virtual {v2, v1, v3}, Lcom/roblox/client/s/c;->a(Landroid/app/Activity;Lcom/roblox/client/s/c$e;)V

    goto/16 :goto_9

    :cond_21
    const-string v3, "OPEN_CAPTCHA_VIEW"

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v1, "CAPTCHA_TAG"

    .line 286
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 287
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->b(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 289
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_9

    :cond_22
    const-string v3, "LUA_UNAUTHORIZED_LOG_OUT"

    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 292
    iget-object v1, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v1}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 294
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/s/h;->d()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 295
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v2

    sget-object v3, Lcom/roblox/client/s/c$e;->e:Lcom/roblox/client/s/c$e;

    invoke-virtual {v2, v1, v3}, Lcom/roblox/client/s/c;->a(Landroid/app/Activity;Lcom/roblox/client/s/c$e;)V

    goto :goto_9

    :cond_23
    const-string v3, "NATIVE_SHARE"

    .line 297
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 298
    iget-object v1, v0, Lcom/roblox/client/game/d;->d:Lcom/roblox/client/game/d$b;

    invoke-interface {v1}, Lcom/roblox/client/game/d$b;->a()Lcom/roblox/client/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s;->r()Landroidx/fragment/app/c;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 299
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_25

    instance-of v3, v1, Lcom/roblox/client/z/d;

    if-eqz v3, :cond_25

    .line 301
    check-cast v1, Lcom/roblox/client/z/d;

    invoke-interface {v1, v2}, Lcom/roblox/client/z/d;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_24
    :goto_8
    const-string v1, "CUSTOM_WEBVIEW_TAG"

    .line 125
    invoke-static {v1}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v2}, Lcom/roblox/client/l/j;->b(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v5}, Lcom/roblox/client/l/j;->a(Z)V

    .line 128
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_25
    :goto_9
    return-void
.end method
