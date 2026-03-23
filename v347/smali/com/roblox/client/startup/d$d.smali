.class Lcom/roblox/client/startup/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/startup/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/d;


# direct methods
.method private constructor <init>(Lcom/roblox/client/startup/d;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/roblox/client/startup/d$d;->a:Lcom/roblox/client/startup/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/startup/d;Lcom/roblox/client/startup/d$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/roblox/client/startup/d$d;-><init>(Lcom/roblox/client/startup/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/roblox/client/o;->a()Lcom/roblox/client/o;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/startup/d$d$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/d$d$1;-><init>(Lcom/roblox/client/startup/d$d;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/o;->a(Lcom/roblox/client/o$b;)V

    .line 69
    return-void
.end method
