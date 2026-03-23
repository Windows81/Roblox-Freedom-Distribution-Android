.class Lcom/roblox/client/h/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/h/j;->a(ZJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/roblox/client/h/j;


# direct methods
.method constructor <init>(Lcom/roblox/client/h/j;ZJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Lcom/roblox/client/h/j$1;->d:Lcom/roblox/client/h/j;

    iput-boolean p2, p0, Lcom/roblox/client/h/j$1;->a:Z

    iput-wide p3, p0, Lcom/roblox/client/h/j$1;->b:J

    iput-object p5, p0, Lcom/roblox/client/h/j$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/roblox/client/h/j$1;->d:Lcom/roblox/client/h/j;

    invoke-static {v0}, Lcom/roblox/client/h/j;->a(Lcom/roblox/client/h/j;)Lcom/roblox/client/h/j$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/h/j$1;->a:Z

    iget-wide v2, p0, Lcom/roblox/client/h/j$1;->b:J

    iget-object v4, p0, Lcom/roblox/client/h/j$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/roblox/client/h/j$a;->a(ZJLjava/lang/String;)V

    .line 96
    return-void
.end method
