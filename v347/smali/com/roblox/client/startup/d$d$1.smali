.class Lcom/roblox/client/startup/d$d$1;
.super Lcom/roblox/client/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/d$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/d$d;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/d$d;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/roblox/client/startup/d$d$1;->a:Lcom/roblox/client/startup/d$d;

    invoke-direct {p0}, Lcom/roblox/client/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/o$c;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/startup/d$d$1;->a:Lcom/roblox/client/startup/d$d;

    iget-object v0, v0, Lcom/roblox/client/startup/d$d;->a:Lcom/roblox/client/startup/d;

    invoke-static {v0, p1}, Lcom/roblox/client/startup/d;->a(Lcom/roblox/client/startup/d;Lcom/roblox/client/o$c;)Lcom/roblox/client/o$c;

    .line 60
    iget-object v0, p0, Lcom/roblox/client/startup/d$d$1;->a:Lcom/roblox/client/startup/d$d;

    iget-object v0, v0, Lcom/roblox/client/startup/d$d;->a:Lcom/roblox/client/startup/d;

    const-string v1, "UpgradeCheck"

    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/d;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public b(Lcom/roblox/client/o$c;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/roblox/client/startup/d$d$1;->a:Lcom/roblox/client/startup/d$d;

    iget-object v0, v0, Lcom/roblox/client/startup/d$d;->a:Lcom/roblox/client/startup/d;

    invoke-static {v0, p1}, Lcom/roblox/client/startup/d;->a(Lcom/roblox/client/startup/d;Lcom/roblox/client/o$c;)Lcom/roblox/client/o$c;

    .line 66
    iget-object v0, p0, Lcom/roblox/client/startup/d$d$1;->a:Lcom/roblox/client/startup/d$d;

    iget-object v0, v0, Lcom/roblox/client/startup/d$d;->a:Lcom/roblox/client/startup/d;

    const-string v1, "UpgradeCheck"

    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/d;->a(Ljava/lang/String;)V

    .line 67
    return-void
.end method
