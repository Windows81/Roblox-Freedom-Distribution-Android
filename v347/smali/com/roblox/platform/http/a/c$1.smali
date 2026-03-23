.class Lcom/roblox/platform/http/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/platform/http/a/c;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ld/m;)Ld/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c",
        "<",
        "Ld/b",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lcom/roblox/platform/http/a/c;


# direct methods
.method constructor <init>(Lcom/roblox/platform/http/a/c;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/roblox/platform/http/a/c$1;->b:Lcom/roblox/platform/http/a/c;

    iput-object p2, p0, Lcom/roblox/platform/http/a/c$1;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;)Ld/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/b",
            "<TR;>;)",
            "Ld/b",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/roblox/platform/http/a/b;

    iget-object v1, p0, Lcom/roblox/platform/http/a/c$1;->b:Lcom/roblox/platform/http/a/c;

    invoke-static {v1}, Lcom/roblox/platform/http/a/c;->a(Lcom/roblox/platform/http/a/c;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/roblox/platform/http/a/b;-><init>(Ljava/util/concurrent/Executor;Ld/b;)V

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/platform/http/a/c$1;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public synthetic b(Ld/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/roblox/platform/http/a/c$1;->a(Ld/b;)Ld/b;

    move-result-object v0

    return-object v0
.end method
