.class Lcom/roblox/client/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/o;->a(Lcom/roblox/client/o$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/o$b;

.field final synthetic b:Lcom/roblox/client/o;


# direct methods
.method constructor <init>(Lcom/roblox/client/o;Lcom/roblox/client/o$b;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/roblox/client/o$1;->b:Lcom/roblox/client/o;

    iput-object p2, p0, Lcom/roblox/client/o$1;->a:Lcom/roblox/client/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/o$1;->b:Lcom/roblox/client/o;

    invoke-static {v0, p1}, Lcom/roblox/client/o;->a(Lcom/roblox/client/o;Lcom/roblox/client/http/j;)V

    .line 79
    iget-object v0, p0, Lcom/roblox/client/o$1;->a:Lcom/roblox/client/o$b;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/roblox/client/o$1;->a:Lcom/roblox/client/o$b;

    iget-object v1, p0, Lcom/roblox/client/o$1;->b:Lcom/roblox/client/o;

    invoke-static {v1}, Lcom/roblox/client/o;->a(Lcom/roblox/client/o;)Lcom/roblox/client/o$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/o$b;->a(Lcom/roblox/client/o$c;)V

    .line 82
    :cond_0
    return-void
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
