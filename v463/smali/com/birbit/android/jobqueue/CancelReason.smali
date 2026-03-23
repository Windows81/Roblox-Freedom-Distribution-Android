.class public interface abstract annotation Lcom/birbit/android/jobqueue/CancelReason;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CANCELLED_VIA_SHOULD_RE_RUN:I = 0x5

.field public static final CANCELLED_WHILE_RUNNING:I = 0x3

.field public static final REACHED_RETRY_LIMIT:I = 0x2

.field public static final SINGLE_INSTANCE_ID_QUEUED:I = 0x1

.field public static final SINGLE_INSTANCE_WHILE_RUNNING:I = 0x6
