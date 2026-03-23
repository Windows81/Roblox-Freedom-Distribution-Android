.class public Lcom/roblox/client/k/c$d;
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
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/roblox/client/k/c;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/k/c;Z)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/roblox/client/k/c$d;->b:Lcom/roblox/client/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean p2, p0, Lcom/roblox/client/k/c$d;->a:Z

    .line 115
    return-void
.end method
