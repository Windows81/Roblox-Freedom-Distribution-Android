.class Lcom/roblox/client/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/k;->a(ZLcom/roblox/client/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/k$a;

.field final synthetic d:Lcom/roblox/client/k;


# direct methods
.method constructor <init>(Lcom/roblox/client/k;Landroid/app/Activity;Ljava/lang/String;Lcom/roblox/client/k$a;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/roblox/client/k$3;->d:Lcom/roblox/client/k;

    iput-object p2, p0, Lcom/roblox/client/k$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/roblox/client/k$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/roblox/client/k$3;->c:Lcom/roblox/client/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/roblox/client/k$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/roblox/client/k$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/util/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/roblox/client/k$3;->c:Lcom/roblox/client/k$a;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/roblox/client/k$3;->c:Lcom/roblox/client/k$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/k$a;->a(ZZ)V

    .line 328
    :cond_0
    return-void
.end method
