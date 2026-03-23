.class Lcom/roblox/client/landing/e$1;
.super Lcom/roblox/client/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/landing/e;->a(Lcom/roblox/client/l/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/landing/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/landing/e;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/roblox/client/landing/e$1;->a:Lcom/roblox/client/landing/e;

    invoke-direct {p0}, Lcom/roblox/client/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/o$c;)V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/roblox/client/o$c;->b:Lcom/roblox/client/o$c;

    if-ne v0, p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/roblox/client/landing/e$1;->a:Lcom/roblox/client/landing/e;

    iget-object v0, v0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/client/landing/d$c;->c(Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    sget-object v0, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    if-ne v0, p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/roblox/client/landing/e$1;->a:Lcom/roblox/client/landing/e;

    iget-object v0, v0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/roblox/client/landing/d$c;->c(Z)V

    goto :goto_0
.end method
