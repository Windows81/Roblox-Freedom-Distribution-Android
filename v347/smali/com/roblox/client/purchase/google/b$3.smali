.class Lcom/roblox/client/purchase/google/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:J

.field final synthetic f:Lcom/roblox/client/purchase/c;

.field final synthetic g:Lcom/roblox/client/purchase/google/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/b;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/c;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$3;->g:Lcom/roblox/client/purchase/google/b;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/b$3;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/roblox/client/purchase/google/b$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/roblox/client/purchase/google/b$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/roblox/client/purchase/google/b$3;->d:Landroid/app/Activity;

    iput-wide p6, p0, Lcom/roblox/client/purchase/google/b$3;->e:J

    iput-object p8, p0, Lcom/roblox/client/purchase/google/b$3;->f:Lcom/roblox/client/purchase/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$3;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/purchase/google/b$3$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/purchase/google/b$3$1;-><init>(Lcom/roblox/client/purchase/google/b$3;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method
