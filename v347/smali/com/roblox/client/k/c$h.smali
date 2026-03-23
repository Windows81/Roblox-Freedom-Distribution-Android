.class public Lcom/roblox/client/k/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/k/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/roblox/client/k/c;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, v0, v0}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;ZZ)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/k/c;ZZ)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/roblox/client/k/c$h;->c:Lcom/roblox/client/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean p2, p0, Lcom/roblox/client/k/c$h;->a:Z

    .line 101
    iput-boolean p3, p0, Lcom/roblox/client/k/c$h;->b:Z

    .line 102
    return-void
.end method
