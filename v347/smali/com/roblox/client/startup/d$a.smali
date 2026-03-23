.class Lcom/roblox/client/startup/d$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/d;


# direct methods
.method private constructor <init>(Lcom/roblox/client/startup/d;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/roblox/client/startup/d$a;->a:Lcom/roblox/client/startup/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/startup/d;Lcom/roblox/client/startup/d$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/roblox/client/startup/d$a;-><init>(Lcom/roblox/client/startup/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/roblox/client/startup/d$a;->a:Lcom/roblox/client/startup/d;

    invoke-static {v0}, Lcom/roblox/client/startup/d;->a(Lcom/roblox/client/startup/d;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/startup/d$a$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/startup/d$a$1;-><init>(Lcom/roblox/client/startup/d$a;)V

    invoke-static {v0, v1}, Lcom/roblox/client/b;->a(Landroid/content/Context;Lcom/roblox/client/b$c;)Lcom/roblox/client/http/c;

    .line 82
    return-void
.end method
