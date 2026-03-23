.class public Lcom/roblox/client/implementation/AppImplementations;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/shell/ShellImplementations;
.implements Lcom/roblox/client/shell/a;
.implements Lcom/roblox/client/shell/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGoogleAnalyticsImpl()Lcom/roblox/client/analytics/e;
    .locals 1

    .line 22
    new-instance v0, Lcom/roblox/client/analytics/f;

    invoke-direct {v0}, Lcom/roblox/client/analytics/f;-><init>()V

    return-object v0
.end method

.method public getAppsFlyerManager()Lcom/roblox/client/s/d;
    .locals 1

    .line 17
    invoke-static {}, Lcom/roblox/client/c/a;->a()Lcom/roblox/client/c/a;

    move-result-object v0

    return-object v0
.end method
