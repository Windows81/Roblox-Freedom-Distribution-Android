.class public Lcom/roblox/engine/jni/model/a;
.super Lcom/roblox/engine/jni/model/c;
.source "SourceFile"


# instance fields
.field public isLuaChatEnabled:Z

.field public isLuaGamesPageEnabled:Z

.field public isLuaHomePageEnabled:Z

.field public isTablet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/roblox/engine/jni/model/a;-><init>(Lcom/roblox/engine/jni/model/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/roblox/engine/jni/model/c;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/roblox/engine/jni/model/c;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/roblox/engine/jni/model/a;->a(Lcom/roblox/engine/jni/model/c;)V

    return-void
.end method

.method private a(Lcom/roblox/engine/jni/model/a;)V
    .locals 1

    .line 27
    iget-boolean v0, p1, Lcom/roblox/engine/jni/model/a;->isLuaHomePageEnabled:Z

    iput-boolean v0, p0, Lcom/roblox/engine/jni/model/a;->isLuaHomePageEnabled:Z

    .line 28
    iget-boolean v0, p1, Lcom/roblox/engine/jni/model/a;->isLuaGamesPageEnabled:Z

    iput-boolean v0, p0, Lcom/roblox/engine/jni/model/a;->isLuaGamesPageEnabled:Z

    .line 29
    iget-boolean v0, p1, Lcom/roblox/engine/jni/model/a;->isLuaChatEnabled:Z

    iput-boolean v0, p0, Lcom/roblox/engine/jni/model/a;->isLuaChatEnabled:Z

    .line 30
    iget-boolean p1, p1, Lcom/roblox/engine/jni/model/a;->isTablet:Z

    iput-boolean p1, p0, Lcom/roblox/engine/jni/model/a;->isTablet:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/engine/jni/model/c;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lcom/roblox/engine/jni/model/c;->a(Lcom/roblox/engine/jni/model/c;)V

    .line 21
    instance-of v0, p1, Lcom/roblox/engine/jni/model/a;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/roblox/engine/jni/model/a;

    invoke-direct {p0, p1}, Lcom/roblox/engine/jni/model/a;->a(Lcom/roblox/engine/jni/model/a;)V

    :cond_0
    return-void
.end method
