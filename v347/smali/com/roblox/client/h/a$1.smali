.class Lcom/roblox/client/h/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/a;->a(Lcom/roblox/client/e/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e/f;

.field final synthetic b:Lcom/roblox/client/h/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/a;Lcom/roblox/client/e/f;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/roblox/client/h/a$1;->b:Lcom/roblox/client/h/a;

    iput-object p2, p0, Lcom/roblox/client/h/a$1;->a:Lcom/roblox/client/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/roblox/client/h/a$1;->b:Lcom/roblox/client/h/a;

    invoke-static {v0}, Lcom/roblox/client/h/a;->a(Lcom/roblox/client/h/a;)Lcom/roblox/client/h/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/h/a$1;->a:Lcom/roblox/client/e/f;

    invoke-virtual {v1}, Lcom/roblox/client/e/f;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/h/a$a;->a(Ljava/util/ArrayList;)V

    .line 120
    return-void
.end method
