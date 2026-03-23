.class Lcom/roblox/client/locale/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/f;->a(Landroid/content/Context;Lcom/roblox/client/locale/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/f$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/roblox/client/locale/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/f$b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/roblox/client/locale/f$2;->c:Lcom/roblox/client/locale/f;

    iput-object p2, p0, Lcom/roblox/client/locale/f$2;->a:Lcom/roblox/client/locale/f$b;

    iput-object p3, p0, Lcom/roblox/client/locale/f$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/c;)V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/locale/f$2;->c:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    invoke-virtual {v0, p3}, Lcom/roblox/client/locale/a;->c(Lcom/roblox/client/locale/c;)V

    .line 64
    iget-object v0, p0, Lcom/roblox/client/locale/f$2;->a:Lcom/roblox/client/locale/f$b;

    iget-object v1, p0, Lcom/roblox/client/locale/f$2;->c:Lcom/roblox/client/locale/f;

    iget-object v1, v1, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    iget-object v2, p0, Lcom/roblox/client/locale/f$2;->b:Landroid/content/Context;

    invoke-virtual {v1, p2, v2}, Lcom/roblox/client/locale/a;->b(Lcom/roblox/client/locale/c;Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/roblox/client/locale/f$b;->a(Z)V

    .line 65
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/locale/f$2;->c:Lcom/roblox/client/locale/f;

    iget-object v0, v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/a;

    invoke-virtual {v0}, Lcom/roblox/client/locale/a;->f()Lcom/roblox/client/locale/a$a;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/locale/a$a;->b:Lcom/roblox/client/locale/a$a;

    if-eq v0, v1, :cond_0

    move-object p2, p1

    .line 60
    goto :goto_0
.end method
