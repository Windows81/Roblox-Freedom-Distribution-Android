.class public Lcom/roblox/client/feature/g;
.super Lcom/roblox/client/feature/l;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Lcom/roblox/client/feature/c;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/roblox/client/feature/l;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v0, "rbx.lua"

    iput-object v0, p0, Lcom/roblox/client/feature/g;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/roblox/client/feature/g;->b:Lcom/roblox/client/feature/c;

    .line 32
    iput p3, p0, Lcom/roblox/client/feature/g;->c:I

    .line 33
    return-void
.end method

.method private a(Lcom/roblox/client/f;Lcom/roblox/client/feature/FeatureState;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 102
    invoke-virtual {p2}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAT_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "rbx.lua"

    const-string v1, "sendAppEvents() start chat"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "Chat"

    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/g;->a(Ljava/lang/String;)Lcom/roblox/engine/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    .line 108
    const-string v0, "USER_ID_EXTRA"

    invoke-virtual {p2, v0, v6, v7}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 109
    const-string v2, "CHAT_CONVERSATION_ID"

    invoke-virtual {p2, v2, v6, v7}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 110
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 111
    const-string v2, "rbx.lua"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAppEvents() userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/feature/g;->a(J)Lcom/roblox/engine/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/f;->b(Lcom/roblox/engine/a/c;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "rbx.lua"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAppEvents() conversationId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v2, v3}, Lcom/roblox/client/feature/g;->b(J)Lcom/roblox/engine/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/f;->b(Lcom/roblox/engine/a/c;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p2}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVATAR_EDITOR_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    const-string v0, "rbx.lua"

    const-string v1, "sendAppEvents() start avatar"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "AvatarEditor"

    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/g;->a(Ljava/lang/String;)Lcom/roblox/engine/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p2}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOME_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    const-string v0, "rbx.lua"

    const-string v1, "sendAppEvents() start home"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "Home"

    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/g;->a(Ljava/lang/String;)Lcom/roblox/engine/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p2}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAMES_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    const-string v0, "rbx.lua"

    const-string v1, "sendAppEvents() start games"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "Games"

    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/g;->a(Ljava/lang/String;)Lcom/roblox/engine/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {p2}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MORE_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "rbx.lua"

    const-string v1, "sendAppEvents() start more"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v0, "More"

    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/g;->a(Ljava/lang/String;)Lcom/roblox/engine/a/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(J)Lcom/roblox/engine/a/c;
    .locals 5

    .prologue
    .line 208
    const-string v0, "AppShellNotifications"

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "StartConversationWithUserId"

    .line 211
    new-instance v3, Lcom/roblox/engine/a/c;

    invoke-direct {v3, v0, v1, v2}, Lcom/roblox/engine/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public a(Ljava/lang/String;)Lcom/roblox/engine/a/c;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/roblox/engine/a/d;

    invoke-direct {v0, p1}, Lcom/roblox/engine/a/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Z)Lcom/roblox/engine/a/c;
    .locals 4

    .prologue
    .line 230
    const-string v0, "AppShellNotifications"

    .line 231
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string v2, "Preloading"

    .line 233
    new-instance v3, Lcom/roblox/engine/a/c;

    invoke-direct {v3, v0, v1, v2}, Lcom/roblox/engine/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public a()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->h()Lcom/roblox/client/f;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/roblox/client/e;->stopRendering()V

    .line 145
    iget-object v1, p0, Lcom/roblox/client/feature/g;->b:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->b(Landroid/support/v4/app/Fragment;)V

    .line 147
    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    const-string v0, "Preloading"

    invoke-virtual {p1, v0, v2}, Lcom/roblox/client/feature/FeatureState;->b(Ljava/lang/String;Z)Z

    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->b()V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->h()Lcom/roblox/client/f;

    move-result-object v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    const-string v0, "LuaAppTabFeature"

    const-string v2, "onShow: Create a GL fragment for LuaApp..."

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/roblox/client/f;

    invoke-direct {v0}, Lcom/roblox/client/f;-><init>()V

    .line 46
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v4, "userId"

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    const-string v4, "joinRequestType"

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v4, "appStarterPlace"

    const-string v5, "rbxasset://places/Mobile.rbxl"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/roblox/client/n/a;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    const-string v4, "appStarterScript"

    const-string v5, "LuaAppStarterScript"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    const-string v4, "is3DApp"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/feature/g;->a(Lcom/roblox/client/f;Lcom/roblox/client/feature/FeatureState;)V

    .line 60
    invoke-virtual {v0, v2}, Lcom/roblox/client/f;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->updateNativeSettings()V

    .line 69
    :goto_1
    iget-object v2, p0, Lcom/roblox/client/feature/g;->b:Lcom/roblox/client/feature/c;

    iget v4, p0, Lcom/roblox/client/feature/g;->c:I

    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v0, v5}, Lcom/roblox/client/feature/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 71
    if-nez v1, :cond_1

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/roblox/client/feature/g;->a(Lcom/roblox/client/f;Lcom/roblox/client/feature/FeatureState;)V

    .line 75
    :cond_1
    invoke-virtual {p0, v3}, Lcom/roblox/client/feature/g;->a(Z)Lcom/roblox/engine/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/f;->b(Lcom/roblox/engine/a/c;)V

    .line 76
    return-void

    .line 53
    :cond_2
    const-string v4, "appStarterScript"

    const-string v5, "MobileStarterScript"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Lcom/roblox/client/f;->resumeRendering()V

    move v1, v2

    goto :goto_1
.end method

.method public b(J)Lcom/roblox/engine/a/c;
    .locals 5

    .prologue
    .line 215
    const-string v0, "AppShellNotifications"

    .line 216
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "StartConversationWithId"

    .line 218
    new-instance v3, Lcom/roblox/engine/a/c;

    invoke-direct {v3, v0, v1, v2}, Lcom/roblox/engine/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public b(Ljava/lang/String;)Lcom/roblox/engine/a/c;
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/roblox/engine/a/b;

    invoke-direct {v0, p1}, Lcom/roblox/engine/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_1
    return-void

    .line 80
    :sswitch_0
    const-string v2, "HOME_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "GAMES_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "CHAT_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "AVATAR_EDITOR_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "MORE_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 82
    :pswitch_0
    sget-object v0, Lcom/roblox/engine/jni/a;->g:Lcom/roblox/engine/jni/a;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeActionTaken(Lcom/roblox/engine/jni/a;)V

    goto :goto_1

    .line 85
    :pswitch_1
    sget-object v0, Lcom/roblox/engine/jni/a;->h:Lcom/roblox/engine/jni/a;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeActionTaken(Lcom/roblox/engine/jni/a;)V

    goto :goto_1

    .line 88
    :pswitch_2
    sget-object v0, Lcom/roblox/engine/jni/a;->c:Lcom/roblox/engine/jni/a;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeActionTaken(Lcom/roblox/engine/jni/a;)V

    goto :goto_1

    .line 91
    :pswitch_3
    sget-object v0, Lcom/roblox/engine/jni/a;->e:Lcom/roblox/engine/jni/a;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeActionTaken(Lcom/roblox/engine/jni/a;)V

    goto :goto_1

    .line 94
    :pswitch_4
    sget-object v0, Lcom/roblox/engine/jni/a;->i:Lcom/roblox/engine/jni/a;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeActionTaken(Lcom/roblox/engine/jni/a;)V

    goto :goto_1

    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x7b996ded -> :sswitch_2
        -0x1d1c8b24 -> :sswitch_1
        0x11bed81a -> :sswitch_0
        0x21acf390 -> :sswitch_4
        0x36e1084e -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public c()V
    .locals 5

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->b()V

    .line 152
    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->h()Lcom/roblox/client/f;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->w_()Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "rbx.lua"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReselected() Navigations Reload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0, v1}, Lcom/roblox/client/feature/g;->b(Ljava/lang/String;)Lcom/roblox/engine/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/f;->b(Lcom/roblox/engine/a/c;)V

    .line 158
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeHandleBackPressed()V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/roblox/client/feature/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "CHAT_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "tabChat"

    .line 189
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "HOME_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const-string v0, "tabHome"

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "GAMES_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const-string v0, "tabGames"

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "MORE_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    const-string v0, "tabMore"

    goto :goto_0

    .line 189
    :cond_3
    const-string v0, "tabAvatar"

    goto :goto_0
.end method

.method public h()Lcom/roblox/client/f;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/roblox/client/feature/g;->b:Lcom/roblox/client/feature/c;

    invoke-virtual {p0}, Lcom/roblox/client/feature/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 172
    instance-of v1, v0, Lcom/roblox/client/f;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Lcom/roblox/client/f;

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "AVATAR_EDITOR_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "AvatarEditor"

    .line 203
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "HOME_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const-string v0, "Home"

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "GAMES_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    const-string v0, "Games"

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/feature/g;->e:Ljava/lang/String;

    const-string v1, "MORE_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    const-string v0, "More"

    goto :goto_0

    .line 203
    :cond_3
    const-string v0, "Chat"

    goto :goto_0
.end method
