.class final Lrx/internal/operators/OperatorMerge$HolderDelayErrors;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HolderDelayErrors"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 62
    new-instance v0, Lrx/internal/operators/OperatorMerge;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorMerge;-><init>(ZILrx/internal/operators/OperatorMerge$1;)V

    sput-object v0, Lrx/internal/operators/OperatorMerge$HolderDelayErrors;->INSTANCE:Lrx/internal/operators/OperatorMerge;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
