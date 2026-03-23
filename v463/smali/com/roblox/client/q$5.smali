.class Lcom/roblox/client/q$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/q;->a(ZLcom/roblox/client/q$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/w$c;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/roblox/client/q$a;

.field final synthetic e:Lcom/roblox/client/q;


# direct methods
.method constructor <init>(Lcom/roblox/client/q;Lcom/roblox/client/w$c;Landroid/app/Activity;Ljava/lang/String;Lcom/roblox/client/q$a;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/roblox/client/q$5;->e:Lcom/roblox/client/q;

    iput-object p2, p0, Lcom/roblox/client/q$5;->a:Lcom/roblox/client/w$c;

    iput-object p3, p0, Lcom/roblox/client/q$5;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/roblox/client/q$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/roblox/client/q$5;->d:Lcom/roblox/client/q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 477
    iget-object p1, p0, Lcom/roblox/client/q$5;->b:Landroid/app/Activity;

    iget-object p2, p0, Lcom/roblox/client/q$5;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/roblox/client/ae/l;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/roblox/client/q$5;->d:Lcom/roblox/client/q$a;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 480
    invoke-interface {p1, p2, v0}, Lcom/roblox/client/q$a;->a(ZZ)V

    :cond_0
    return-void
.end method
