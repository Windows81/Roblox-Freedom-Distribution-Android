.class Lcom/roblox/client/pushnotification/a$1;
.super Lcom/roblox/client/pushnotification/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/roblox/client/pushnotification/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/a;Landroid/content/Context;JLandroid/content/Context;Z)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/roblox/client/pushnotification/a$1;->c:Lcom/roblox/client/pushnotification/a;

    iput-object p5, p0, Lcom/roblox/client/pushnotification/a$1;->a:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/roblox/client/pushnotification/a$1;->b:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/roblox/client/pushnotification/s;-><init>(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a$1;->c:Lcom/roblox/client/pushnotification/a;

    iget-object v0, v0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a$1;->c:Lcom/roblox/client/pushnotification/a;

    iget-object v1, p0, Lcom/roblox/client/pushnotification/a$1;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/roblox/client/pushnotification/a$1;->b:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;ZLandroid/graphics/Bitmap;)Landroidx/core/app/i$c;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a$1;->c:Lcom/roblox/client/pushnotification/a;

    iget-object v1, p0, Lcom/roblox/client/pushnotification/a$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;Landroidx/core/app/i$c;)V

    :goto_0
    return-void
.end method
