.class Lcom/roblox/client/landing/AboutActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/landing/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/landing/AboutActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/landing/AboutActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/roblox/client/landing/AboutActivity$1;->a:Lcom/roblox/client/landing/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "about"

    const-string v0, "close"

    .line 37
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/roblox/client/landing/AboutActivity$1;->a:Lcom/roblox/client/landing/AboutActivity;

    invoke-virtual {p1}, Lcom/roblox/client/landing/AboutActivity;->finish()V

    .line 39
    iget-object p1, p0, Lcom/roblox/client/landing/AboutActivity$1;->a:Lcom/roblox/client/landing/AboutActivity;

    sget v0, Lcom/roblox/client/o$a;->stay:I

    sget v1, Lcom/roblox/client/o$a;->slide_down_short:I

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/landing/AboutActivity;->overridePendingTransition(II)V

    return-void
.end method
