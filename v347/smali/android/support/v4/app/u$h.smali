.class abstract Landroid/support/v4/app/u$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation


# instance fields
.field final c:Landroid/content/ComponentName;

.field d:Z

.field e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Landroid/support/v4/app/u$h;->c:Landroid/content/ComponentName;

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/support/v4/app/u$h;->d:Z

    if-nez v0, :cond_1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/u$h;->d:Z

    .line 124
    iput p1, p0, Landroid/support/v4/app/u$h;->e:I

    .line 129
    :cond_0
    return-void

    .line 125
    :cond_1
    iget v0, p0, Landroid/support/v4/app/u$h;->e:I

    if-eq v0, p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given job ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different than previous "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/u$h;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract a(Landroid/content/Intent;)V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
