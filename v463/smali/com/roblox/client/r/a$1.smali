.class Lcom/roblox/client/r/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/r/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/roblox/client/r/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/r/a;Z)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/roblox/client/r/a$1;->b:Lcom/roblox/client/r/a;

    iput-boolean p2, p0, Lcom/roblox/client/r/a$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/roblox/client/r/a$1;->b:Lcom/roblox/client/r/a;

    invoke-static {v0}, Lcom/roblox/client/r/a;->a(Lcom/roblox/client/r/a;)Lcom/roblox/client/r/a$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/r/a$1;->a:Z

    invoke-interface {v0, v1}, Lcom/roblox/client/r/a$a;->a(Z)V

    return-void
.end method
