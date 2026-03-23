.class Lcom/roblox/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/a/d;


# direct methods
.method private constructor <init>(Lcom/roblox/a/d;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/roblox/a/d$a;->a:Lcom/roblox/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/a/d;Lcom/roblox/a/d$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/roblox/a/d$a;-><init>(Lcom/roblox/a/d;)V

    return-void
.end method


# virtual methods
.method public executeRoblox(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/roblox/a/d$a;->a:Lcom/roblox/a/d;

    iget-object v0, v0, Lcom/roblox/a/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/a/d$a$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/a/d$a$1;-><init>(Lcom/roblox/a/d$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method
