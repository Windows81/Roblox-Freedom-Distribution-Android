.class public Lcom/roblox/platform/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/a;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/roblox/platform/http/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/roblox/platform/http/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/platform/http/h;
    .locals 3

    .line 10
    sget-object v0, Lcom/roblox/platform/http/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/roblox/platform/http/b;->b:Lcom/roblox/platform/http/h;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/roblox/platform/http/h;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v1, v2}, Lcom/roblox/platform/http/h;-><init>(Ljava/net/CookiePolicy;)V

    iput-object v1, p0, Lcom/roblox/platform/http/b;->b:Lcom/roblox/platform/http/h;

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/roblox/platform/http/b;->b:Lcom/roblox/platform/http/h;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
