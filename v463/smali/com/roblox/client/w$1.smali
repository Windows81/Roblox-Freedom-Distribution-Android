.class Lcom/roblox/client/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/w;->a(Lcom/roblox/client/w$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/w$b;

.field final synthetic b:Lcom/roblox/client/w;


# direct methods
.method constructor <init>(Lcom/roblox/client/w;Lcom/roblox/client/w$b;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/roblox/client/w$1;->b:Lcom/roblox/client/w;

    iput-object p2, p0, Lcom/roblox/client/w$1;->a:Lcom/roblox/client/w$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/roblox/client/w$1;->b:Lcom/roblox/client/w;

    invoke-static {v0, p1}, Lcom/roblox/client/w;->a(Lcom/roblox/client/w;Lcom/roblox/client/http/j;)V

    .line 176
    iget-object p1, p0, Lcom/roblox/client/w$1;->a:Lcom/roblox/client/w$b;

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/roblox/client/w$1;->b:Lcom/roblox/client/w;

    iget-object v0, v0, Lcom/roblox/client/w;->a:Lcom/roblox/client/w$c;

    invoke-interface {p1, v0}, Lcom/roblox/client/w$b;->a(Lcom/roblox/client/w$c;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    return-void
.end method
