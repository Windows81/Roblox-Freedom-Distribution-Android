.class Lcom/roblox/client/q$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/q;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/q;


# direct methods
.method constructor <init>(Lcom/roblox/client/q;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/roblox/client/q$2;->a:Lcom/roblox/client/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lcom/roblox/client/q$2;->a:Lcom/roblox/client/q;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/roblox/client/q;->a(Lcom/roblox/client/q;Landroidx/appcompat/app/b;)Landroidx/appcompat/app/b;

    return-void
.end method
