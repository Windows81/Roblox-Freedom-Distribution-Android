.class Lcom/roblox/client/q$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/q;->G()V
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

    .line 529
    iput-object p1, p0, Lcom/roblox/client/q$6;->a:Lcom/roblox/client/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 532
    iget-object p1, p0, Lcom/roblox/client/q$6;->a:Lcom/roblox/client/q;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/roblox/client/ae/o;->a(Landroid/content/Context;J)V

    .line 533
    invoke-static {}, Lcom/roblox/client/ae/o;->a()V

    return-void
.end method
