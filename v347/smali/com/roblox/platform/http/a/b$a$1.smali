.class Lcom/roblox/platform/http/a/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/platform/http/a/b$a;->a(Ld/b;Ld/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/l;

.field final synthetic b:Lcom/roblox/platform/http/a/b$a;


# direct methods
.method constructor <init>(Lcom/roblox/platform/http/a/b$a;Ld/l;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/roblox/platform/http/a/b$a$1;->b:Lcom/roblox/platform/http/a/b$a;

    iput-object p2, p0, Lcom/roblox/platform/http/a/b$a$1;->a:Ld/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/roblox/platform/http/a/b$a$1;->b:Lcom/roblox/platform/http/a/b$a;

    iget-object v0, v0, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    iget-object v0, v0, Lcom/roblox/platform/http/a/b;->b:Ld/b;

    invoke-interface {v0}, Ld/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/roblox/platform/http/a/b$a$1;->b:Lcom/roblox/platform/http/a/b$a;

    invoke-static {v0}, Lcom/roblox/platform/http/a/b$a;->a(Lcom/roblox/platform/http/a/b$a;)Ld/d;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/http/a/b$a$1;->b:Lcom/roblox/platform/http/a/b$a;

    iget-object v1, v1, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ld/d;->a(Ld/b;Ljava/lang/Throwable;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/http/a/b$a$1;->b:Lcom/roblox/platform/http/a/b$a;

    invoke-static {v0}, Lcom/roblox/platform/http/a/b$a;->a(Lcom/roblox/platform/http/a/b$a;)Ld/d;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/platform/http/a/b$a$1;->b:Lcom/roblox/platform/http/a/b$a;

    iget-object v1, v1, Lcom/roblox/platform/http/a/b$a;->a:Lcom/roblox/platform/http/a/b;

    iget-object v2, p0, Lcom/roblox/platform/http/a/b$a$1;->a:Ld/l;

    invoke-interface {v0, v1, v2}, Ld/d;->a(Ld/b;Ld/l;)V

    goto :goto_0
.end method
